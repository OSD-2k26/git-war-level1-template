#!/bin/bash
set -e

# Check hello.txt exists
if [ ! -f hello.txt ]; then
  echo "❌ hello.txt not found"
  exit 1
fi

# Check latest commit message
MSG=$(git log -1 --pretty=%B)
if [ "$MSG" != "begin" ]; then
  echo "❌ Latest commit message must be 'begin'"
  exit 1
fi

echo "✅ Level 1 Passed"
