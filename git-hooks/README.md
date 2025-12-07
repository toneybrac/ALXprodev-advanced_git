# Git Hooks for ALXprodev-advanced_git

This directory contains Git hooks to automate parts of the GitFlow process.

## Available Hooks

### 1. pre-commit
**Purpose**: Ensures each directory in the repository has a README file.

**What it does**:
- Checks all staged files
- For each directory containing staged files, verifies a README exists
- Warns if any directory is missing a README
- Allows override if needed

**File extensions checked**: README, README.md, README.txt, README.rst (case-insensitive)

### 2. post-merge
**Purpose**: Logs merge operations, especially into production branches (main/master).

**What it does**:
- Detects when a merge operation occurs
- Logs the merge details to `.git/logs/merge-history.log`
- Special logging for production branch merges to `.git/logs/production-merges.log`
- Provides console feedback about the merge

## Installation

Run the setup script:
```bash
chmod +x setup-git-hooks.sh
./setup-git-hooks.sh
