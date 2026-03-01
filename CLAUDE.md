# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a **dotfiles repository** managed with **GNU Stow** - a program that creates symbolic links from files in subdirectories to their target locations in the home directory. The repository structure supports multiple Linux distributions and macOS.

## Technology Stack

- **Dotfile Management Tool**: GNU Stow
- **Shell**: ZSH with oh-my-zsh (agnoster theme)
- **Plugin Manager**: asdf, mise
- **Package Manager**: omarchy (Omni Arch Linux-based)
- **Desktop Environment (omarchy)**: Hyprland (Wayland compositor)
- **Bar**: Waybar
- **Terminal**: Depends on system configuration

## Stow Setup

Stow is used to install dotfiles from this repository to `$HOME`. The basic workflow:

```bash
# Install dotfiles for a specific platform
cd /Users/bob/.dotfiles
stow <directory-name>
```

## Available Platforms

### From Makefile

The repository provides two make targets for quick setup:

```bash
make omarchy    # Install for Arch Linux with omarchy
stow common omarchy

make mac        # Install for macOS
stow common mac
```

### Directory Structure

```
.
├── common/           # Shared files for all platforms
│   ├── .aliases    # Common shell aliases
│   └── .env-vars   # Common environment variables (Poetry settings)
├── mac/            # macOS-specific configuration
│   ├── .zshrc
│   ├── .aliases-mac
│   └── .env-vars-mac
├── cachyos/        # CachyOS-specific configuration
│   └── .zshrc
├── omarchy/        # Arch Linux with omarchy specific
│   ├── .zshrc
│   └── .config/    # Hyprland, Waybar configs
└── .stow-local-ignore  # Files excluded from version control
```

## Configuration Files

### Environment Variables

Files are sourced in order in `.zshrc`:
1. `$HOME/.env-vars` - Common variables
2. `$HOME/.env-vars-secrets` - Sensitive variables (gitignored)
3. `$HOME/.env-vars-mac` - macOS-specific variables

### Shell Aliases

Files are sourced in order:
1. `$HOME/.aliases` - Common aliases
2. `$HOME/.aliases-mac` - macOS-specific aliases

### Plugins

The repository uses multiple plugin managers:
- **asdf**: For language runtimes (Go is configured)
- **mise**: For tool management (activated in zshrc)
- **oh-my-zsh**: With plugins `git asdf aws` (omarchy/cachyos) or `git aws` (mac)

## Platform-Specific Configurations

### Hyprland (Wayland Compositor)

Located in `omarchy/.config/hypr/`:

**Key Bindings** (from `bindings.conf`):
- `SUPER+Return`: Open terminal
- `SUPER+Shift+F`: File manager (Nautilus)
- `SUPER+Shift+B`: Browser
- `SUPER+Shift+M`: Spotify
- `SUPER+Shift+N`: Code editor
- `SUPER+Shift+D`: lazydocker
- `SUPER+Shift+G`: Signal
- `SUPER+Shift+O`: Obsidian
- `SUPER+Shift+/`: 1Password
- `SUPER+Shift+A`: ChatGPT
- `SUPER+Shift+E`: Hey.com email
- `SUPER+Shift+Y`: YouTube

### Waybar Configuration

Located in `omarchy/.config/waybar/`:

**Left modules**: Omarchy icon, Workspaces
**Center modules**: Clock, Update check, Screen recording indicator
**Right modules**: System tray expander, Bluetooth, Network, Idle inhibitor, PulseAudio, CPU, Battery

The bar uses dynamic theming via `@import` from the active theme.

## Claude Code Skills

The repository includes several custom skills:

### pr-description
Used when creating pull requests. Follows this format:
- **What**: One sentence explaining the PR
- **Why**: Brief context for the change
- **Changes**: Bullet points of specific changes

### code-analyzer
When explaining code, use this format:
1. High-level overview with analogies
2. Detailed breakdown with diagrams (ASCII/Mermaid)
3. Highlight gotchas or confusing elements

### deep-research
Used for thorough topic exploration:
1. Find relevant files using Glob and Grep
2. Read and analyze the code
3. Summarize findings with file references

## Development Notes

- Files starting with `.` are dotfiles that get linked to `$HOME`
- The `.stow-local-ignore` file lists files that should NOT be stowed (`.git`, `.gitignore`, `.DS_Store`, etc.)
- Secrets should go in `.env-vars-secrets` which is gitignored
- When working with this repo, understand the platform-specific implications (macOS vs Linux configs differ significantly)

## Key Files to Reference

- `Makefile` - Build targets for different platforms
- `.stow-local-ignore` - Files excluded from stow
- `README.md` - Brief project description
- `common/.aliases` - Core shell aliases
- `common/.env-vars` - Shared environment variables
- `omarchy/.zshrc` / `mac/.zshrc` - Shell configuration for each platform
- `omarchy/.config/hypr/bindings.conf` - Hyprland keybindings
- `omarchy/.config/waybar/config.jsonc` - Waybar module configuration
- `ai/.claude/skills/` - Custom Claude Code skills

## Stow Ignore Patterns

Files in `.stow-local-ignore` that won't be stowed:
- `.git`, `.gitignore`, `.gitmodules`
- `.DS_Store` (macOS metadata)
- `.vscode/` (IDE configuration)
- `scripts/` (utility scripts)