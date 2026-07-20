# `_data/brand/` — vendored brand-pack mirror

This directory mirrors the canonical Skylight brand canon from [`skylight-hub/plugins/skylight-brand-pack/config/`](https://github.com/skylight-hq/skylight-hub/tree/main/plugins/skylight-brand-pack/config). The website builds against the vendored copy.

## What's here

7 YAML files, each carrying a sync header pointing back at its source in `skylight-hub`:

| File | What it carries |
|---|---|
| `colors.yml` | Full palette: 5 families × 3–8 tints; primary + secondary palettes; color meanings; `allowed_hex` flat list. |
| `typography.yml` | Libre Franklin + Roboto Mono families; weights; scale recommendations. |
| `logo-rules.yml` | 7 logo variants; clear-space; min sizes; allowed rotations; forbidden modifications. |
| `voice-tone.yml` | 5 voice qualities + tone modulation axes. |
| `brand-narrative.yml` | Mission; the Skylight difference; personality; audience messaging. |
| `illustration.yml` | 6 illustration principles + visual style + illustration types. |
| `customer-brand-rules.yml` | Meta rules for customer brand handling + per-client extraction status. |

## How sync works

[`.github/workflows/sync-brand-pack.yml`](../../.github/workflows/sync-brand-pack.yml) runs weekly (Mondays 14:00 UTC) and on manual `workflow_dispatch`. It fetches the latest brand-pack YAMLs from `skylight-hq/skylight-hub@main` and opens a PR if anything changed. Headers (`synced_at`, `source_sha`) update on every sync; only the *body* of each file is diff-compared so a no-change run is a no-op.

Mirrors the [`sync-website-filters.yml` pattern in skylight-hub](https://github.com/skylight-hq/skylight-hub/blob/main/.github/workflows/sync-website-filters.yml), with direction reversed (this repo fetches FROM hub instead of being fetched BY hub).

## Why vendored, not runtime fetch

- **Build determinism:** Jekyll builds need data on disk; runtime API calls during build complicate caching + CI determinism.
- **Reviewability:** brand changes show up as a diff in a PR. Comms team reviews + approves the sync before it goes live.
- **Offline build:** the website builds from local files; no external dependency at build time.
- **Same pattern as `_data/filters.yml`** — but in this case the canonical source is `skylight-hub` (filters.yml is the inverse — `skylight.digital` is canon, hub mirrors).

## The retired `_data/color.yml`

`_data/color.yml` was the canonical color source until the brand-pack scaffold landed in `skylight-hub`. It is **gone** — `_data/brand/colors.yml` is the sole source of truth for palette data, and `site.data.color` no longer resolves to anything.

The migration ran in two steps:

1. `pages/company/brand/identity/colors.md` moved to `site.data.brand.colors` when the vendored data landed.
2. `pages/company/brand/illustration/visual_style.md` (the last consumer) followed, and the duplicate file was deleted. Both files held identical data at the point of deletion, so the rendered output is unchanged.

Read palette data as `site.data.brand.colors`. The keys the brand pages consume — `primary_illustration` and `skin`, alongside the `blue`/`green`/`red`/`ochre`/`gray` families and `primary`/`secondary` — all live there, plus `meanings` and `allowed_hex`, which the retired file never carried.

## Freshness check

`.github/workflows/brand-pack-freshness.yml` fails the build on push to `master` (or via the manual dispatch) if any vendored file's `synced_at` header is more than 30 days old. Forces sync attention; prevents silent drift.

Threshold is 30 days; same convention applied to the filters-pack on the hub side.

## Editing the brand canon

**Don't edit these files directly.** The sync workflow will clobber any local edits on next run.

To change brand data:

1. Open a PR in [`skylight-hub`](https://github.com/skylight-hq/skylight-hub) modifying `plugins/skylight-brand-pack/config/<file>.yml`.
2. Merge. The next weekly sync (or a manually-dispatched run) opens a PR here with the change.
3. Review the PR; merge.

For urgent changes, manually trigger the sync workflow after the hub PR merges via the **Actions → sync-brand-pack → Run workflow** UI.

## Cross-references

- Canon source: [`skylight-hub/plugins/skylight-brand-pack/`](https://github.com/skylight-hq/skylight-hub/tree/main/plugins/skylight-brand-pack)
- Schema spec: [`skylight-hub/plugins/skylight-brand-pack/README.md`](https://github.com/skylight-hq/skylight-hub/blob/main/plugins/skylight-brand-pack/README.md)
- Phase plan: [`brand-pack-followups.md`](https://github.com/skylight-hq/skylight-hub/blob/main/migrations/brand-pack-followups.md) Phase 7
- Sync-pattern precedent: [`skylight-hub/.github/workflows/sync-website-filters.yml`](https://github.com/skylight-hq/skylight-hub/blob/main/.github/workflows/sync-website-filters.yml)
