#!/bin/bash
REPO_PATH="/Users/alphabrav0/Repositories/grc_engineering-python-fundamentals"
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  GRC Python — Save & Close"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
cd "$REPO_PATH" || { echo -e "${RED}ERROR: Could not find repo${NC}"; exit 1; }
if git diff --quiet && git diff --cached --quiet; then
  echo -e "${YELLOW}No changes to save.${NC}"
else
  if [ -n "$1" ]; then
    COMMIT_MSG="$1"
  else
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M")
    BRANCH=$(git branch --show-current)
    COMMIT_MSG="wip($BRANCH): progress saved $TIMESTAMP"
  fi
  echo "▶ Staging changes..."
  git add .
  echo "▶ Committing: \"$COMMIT_MSG\""
  git commit -m "$COMMIT_MSG"
  BRANCH=$(git branch --show-current)
  echo "▶ Pushing to GitHub (branch: $BRANCH)..."
  git push origin "$BRANCH"
  echo -e "${GREEN}✓ Work saved and pushed to GitHub.${NC}"
fi
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
