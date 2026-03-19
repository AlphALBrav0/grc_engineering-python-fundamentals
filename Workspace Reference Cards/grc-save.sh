#!/bin/bash

# =============================================================================
# grc-save.sh — GRC Python Fundamentals Save & Close Script
# =============================================================================
# Usage:
#   ./grc-save.sh "feat(ch01): complete exercise 1-1"   ← custom message
#   ./grc-save.sh                                        ← uses timestamp
# =============================================================================

REPO_PATH="/Users/alphabrav0/Repositories/grc_engineering-python-fundamentals"

# ── Colors for terminal output ────────────────────────────────────────────────
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  GRC Python — Save & Close"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ── Navigate to repo ──────────────────────────────────────────────────────────
cd "$REPO_PATH" || {
  echo -e "${RED}ERROR: Could not find repo at $REPO_PATH${NC}"
  exit 1
}

# ── Check for changes ─────────────────────────────────────────────────────────
if git diff --quiet && git diff --cached --quiet; then
  echo -e "${YELLOW}No changes to save.${NC}"
else
  # ── Build commit message ────────────────────────────────────────────────────
  if [ -n "$1" ]; then
    COMMIT_MSG="$1"
  else
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M")
    BRANCH=$(git branch --show-current)
    COMMIT_MSG="wip($BRANCH): progress saved $TIMESTAMP"
  fi

  # ── Stage all changes ───────────────────────────────────────────────────────
  echo ""
  echo "▶ Staging changes..."
  git add .

  # ── Commit ──────────────────────────────────────────────────────────────────
  echo "▶ Committing: \"$COMMIT_MSG\""
  git commit -m "$COMMIT_MSG"

  # ── Push to GitHub ───────────────────────────────────────────────────────────
  BRANCH=$(git branch --show-current)
  echo "▶ Pushing to GitHub (branch: $BRANCH)..."
  git push origin "$BRANCH"

  echo ""
  echo -e "${GREEN}✓ Work saved and pushed to GitHub.${NC}"
fi

# ── Deactivate virtual environment ────────────────────────────────────────────
echo "▶ Deactivating virtual environment..."
if [ -n "$VIRTUAL_ENV" ]; then
  deactivate
  echo -e "${GREEN}✓ Virtual environment deactivated.${NC}"
else
  echo -e "${YELLOW}  (Virtual environment was not active — skipping)${NC}"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${GREEN}  All done. Safe to close your Mac.${NC}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
