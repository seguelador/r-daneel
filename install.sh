#!/usr/bin/env bash
# install.sh — register Daneel as a Claude Code plugin (skills-dir)
#
# Creates a symlink at ~/.claude/skills/daneel pointing to this repo so
# Claude Code auto-loads the plugin on the next session.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="${HOME}/.claude/skills"
LINK_PATH="${SKILLS_DIR}/daneel"

mkdir -p "${SKILLS_DIR}"

if [ -L "${LINK_PATH}" ]; then
  CURRENT="$(readlink "${LINK_PATH}")"
  if [ "${CURRENT}" = "${REPO_DIR}" ]; then
    echo "✓ Plugin already registered: ${LINK_PATH} → ${REPO_DIR}"
    exit 0
  else
    echo "⚠ Symlink exists but points elsewhere (${CURRENT}). Updating."
    rm "${LINK_PATH}"
  fi
elif [ -e "${LINK_PATH}" ]; then
  echo "✗ ${LINK_PATH} exists and is not a symlink. Remove it manually and re-run."
  exit 1
fi

ln -s "${REPO_DIR}" "${LINK_PATH}"
echo "✓ Plugin registered: ${LINK_PATH} → ${REPO_DIR}"
echo "  Restart Claude Code to load the daneel skills."
