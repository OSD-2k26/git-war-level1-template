#!/bin/bash
set -e

# Check hello.txt exists in the repo
if [ ! -f hello.txt ]; then
  echo "❌ hello.txt not found"
  exit 1
fi

# Check if any commit message contains exactly "begin"
FOUND=$(git log --pretty=%B | grep -x "begin" || true)

if [ -n "$FOUND" ]; then
  echo "✅ Level 1 Passed"
  exit 0
else
  echo "❌ No commit with message 'begin' found"
  exit 1
fi
