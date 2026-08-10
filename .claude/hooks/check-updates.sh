#!/usr/bin/env bash
# check-updates.sh — notify if the Daneel framework has upstream commits.
# Runs on SessionStart. Fetches silently; exits cleanly if offline or no upstream.

UPSTREAM=$(git rev-parse --abbrev-ref --symbolic-full-name @{u} 2>/dev/null)
[ -z "$UPSTREAM" ] && exit 0

REMOTE=$(echo "$UPSTREAM" | cut -d/ -f1)
git fetch "$REMOTE" --quiet 2>/dev/null || exit 0

BEHIND=$(git rev-list "HEAD..@{u}" --count 2>/dev/null)
[ "${BEHIND:-0}" -gt 0 ] && echo "Daneel: $BEHIND new framework commit(s) available. Run 'git pull' to update."

exit 0
