# Agent Context — dotfiles

Personal macOS developer environment for Felix. 
Target platform is Apple Silicon Mac (M-series) with Homebrew at `/opt/homebrew`.

## Repository Purpose

Version-controlled config files and a bootstrap script for setting up a new Mac from scratch. 
Run `bin/laptop-setup.sh` to install tools and symlink all configs to their expected locations in `~`.

## Key Conventions

- Security: No secrets or sensitive information should be stored in this repository.
- **`laptop-setup.sh` must be idempotent.** It can be re-run on an existing machine. Symlinks use `ln -sf`. 
- **Homebrew paths assume Apple Silicon** (`/opt/homebrew`). 
