#!/bin/bash

# Script to install Git hooks
# Run this after cloning the repository

echo "🔧 Setting up Git hooks..."

HOOKS_DIR=".git/hooks"
SRC_HOOKS_DIR="git-hooks"

if [ ! -d "$HOOKS_DIR" ]; then
    echo "❌ Error: Not a Git repository or .git directory not found"
    echo "   Run this script from the root of your Git repository"
    exit 1
fi

if [ ! -d "$SRC_HOOKS_DIR" ]; then
    echo "❌ Error: git-hooks directory not found"
    echo "   Make sure you're in the repository root"
    exit 1
fi

# Install pre-commit hook
echo "Installing pre-commit hook..."
cp "$SRC_HOOKS_DIR/pre-commit" "$HOOKS_DIR/"
chmod +x "$HOOKS_DIR/pre-commit"

# Install post-merge hook
echo "Installing post-merge hook..."
cp "$SRC_HOOKS_DIR/post-merge" "$HOOKS_DIR/"
chmod +x "$HOOKS_DIR/post-merge"

echo ""
echo "✅ Git hooks installed successfully!"
echo ""
echo "Available hooks:"
echo "1. pre-commit  - Checks for README files in directories"
echo "2. post-merge  - Logs merge operations (especially to main/master)"
echo ""
echo "To test pre-commit hook:"
echo "  git add ."
echo "  git commit -m 'Test commit'"
echo ""
echo "To disable hooks temporarily:"
echo "  git commit --no-verify -m 'Commit without hooks'"
