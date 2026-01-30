#!/bin/bash

set -e

# Ensure we're inside a git repo
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || {
  echo "Not inside a git repository"
  exit 1
}

BRANCH=$(git branch --show-current)

# Read files safely (handles spaces)
git status --porcelain -z | while IFS= read -r -d '' entry; do
  FILE="${entry:3}"

  echo "----------------------------------------"
  echo "Adding: $FILE"

  git add "$FILE"
  git commit -m "Add/update $FILE"
  git push origin "$BRANCH"
done

echo "✅ All files committed and pushed one by one"
