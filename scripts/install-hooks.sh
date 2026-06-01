#!/usr/bin/env bash
# Install scripts/hooks/* into .git/hooks/ of the current clone.
#
# Run after a fresh clone (or `git worktree add`):
#   ./scripts/install-hooks.sh
#
# Idempotent — overwrites existing .git/hooks/ hook scripts with the canonical
# copies. Skips docs + data files (README.md, *.txt, dotfiles) — only
# executable hook scripts get installed.
#
# Copied from skylight-hub canon; this repo carries only the asset-manifest
# pre-commit check (no author-identity guard). See scripts/hooks/README.md.

set -e

repo_root=$(git rev-parse --show-toplevel)
src_dir="$repo_root/scripts/hooks"
# Let git resolve the hooks dir so this works in linked worktrees too: there
# $repo_root/.git is a file (not a dir) and hooks live in the shared common
# git dir. `git rev-parse --git-path hooks` returns the right path in both a
# normal clone and a worktree.
dest_dir=$(git rev-parse --git-path hooks)

[ -d "$src_dir" ]  || { echo "ERROR: $src_dir not found." >&2; exit 1; }
[ -d "$dest_dir" ] || { echo "ERROR: $dest_dir not found. Not a git repo?" >&2; exit 1; }

installed=0
for src in "$src_dir"/*; do
  [ -f "$src" ] || continue
  name=$(basename "$src")
  case "$name" in
    *.md|*.txt|.*) continue ;;  # docs + data, not hooks
  esac
  dest="$dest_dir/$name"
  cp "$src" "$dest"
  chmod +x "$dest"
  echo "installed: $dest"
  installed=$((installed + 1))
done

if [ "$installed" -eq 0 ]; then
  echo "WARN: no hooks installed (scripts/hooks/ had no hook scripts?)" >&2
  exit 0
fi
echo ""
echo "$installed hook(s) installed. Asset-manifest check is active."
