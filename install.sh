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

# --- Codex CLI: register skills at ~/.agents/skills/daneel ---
AGENTS_SKILLS_DIR="${HOME}/.agents/skills"
AGENTS_LINK="${AGENTS_SKILLS_DIR}/daneel"

mkdir -p "${AGENTS_SKILLS_DIR}"

if [ -L "${AGENTS_LINK}" ]; then
  CURRENT_AGENTS="$(readlink "${AGENTS_LINK}")"
  if [ "${CURRENT_AGENTS}" = "${REPO_DIR}" ]; then
    echo "✓ Codex skills already registered: ${AGENTS_LINK} → ${REPO_DIR}"
  else
    echo "⚠ Codex symlink exists but points elsewhere (${CURRENT_AGENTS}). Updating."
    rm "${AGENTS_LINK}"
    ln -s "${REPO_DIR}" "${AGENTS_LINK}"
    echo "✓ Codex skills registered: ${AGENTS_LINK} → ${REPO_DIR}"
  fi
elif [ -e "${AGENTS_LINK}" ]; then
  echo "✗ ${AGENTS_LINK} exists and is not a symlink. Remove it manually and re-run."
else
  ln -s "${REPO_DIR}" "${AGENTS_LINK}"
  echo "✓ Codex skills registered: ${AGENTS_LINK} → ${REPO_DIR}"
fi

# AGENTS.local.md → CLAUDE.local.md (shared instance context for Codex)
AGENTS_LOCAL="${REPO_DIR}/AGENTS.local.md"
if [ -f "${REPO_DIR}/CLAUDE.local.md" ] && [ ! -e "${AGENTS_LOCAL}" ]; then
  ln -s "CLAUDE.local.md" "${AGENTS_LOCAL}"
  echo "✓ AGENTS.local.md → CLAUDE.local.md"
elif [ -L "${AGENTS_LOCAL}" ]; then
  echo "✓ AGENTS.local.md symlink already exists"
fi

echo ""
echo "  Next steps:"
echo "  1. cp templates/CLAUDE.local.md.example CLAUDE.local.md"
echo "  2. Fill in your name, role, and referente (timezone optional)"
echo "  3. Restart Claude Code / Codex, open this folder, and run /catchup"
echo ""
echo "  Full setup guide: docs/customize.md"
