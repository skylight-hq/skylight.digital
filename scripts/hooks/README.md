---
title: Git hooks
status: active
owner: Federation Steward
---

# Git hooks

Per-clone git hook, **copied (in part) from the [skylight-hub hooks canon](https://github.com/skylight-hq/skylight-hub/tree/main/scripts/hooks)**. `.git/hooks/` isn't tracked by git, so the hook lives here and `scripts/install-hooks.sh` copies it into `.git/hooks/` of each clone.

## What's here

| File | Role |
|---|---|
| `pre-commit` | Runs the federation asset-manifest validator on any staged `assets-manifest.yml` / `image-library.yml` (warn-only; self-skips until this repo bootstraps the validator). |

**This repo intentionally omits the hub's author-identity guard** (`allowed-authors.txt` + `prepare-commit-msg`): skylight.digital has many contributors, so an author allowlist isn't appropriate here. Only the asset-manifest check is mirrored, for forward-readiness once the repo bootstraps the federation asset registry.

## Installing

After a fresh clone (or `git worktree add`):

```bash
./scripts/install-hooks.sh
```

Idempotent — re-run any time the canonical hook changes.

## Canonical source

Copied from `skylight-hub`. See the [hub README](https://github.com/skylight-hq/skylight-hub/blob/main/scripts/hooks/README.md) for the full asset-manifest-check rationale and the `ASSET_MANIFEST_STRICT=1` strict toggle.
