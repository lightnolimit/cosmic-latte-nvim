# CLAUDE.md

This file provides guidance to Claude Code when working with the Cosmic Latte theme for Neovim.

## Repository Overview

Cosmic Latte is a solarized-inspired Neovim colorscheme with cosmic coral accents. It provides both a light theme (inspired by the actual average color of the universe #fff8e7) and a dim theme for extended coding sessions.

## Git Workflow

This repository follows a feature branch workflow:

1. **Main branch**: Production-ready code only
2. **Development branch**: Integration branch for feature development
3. **Feature branches**: All new work happens in feature branches

### Branch Naming Convention
- `feature/` - New features or enhancements
- `bugfix/` - Bug fixes
- `hotfix/` - Critical fixes that need to go directly to main
- `docs/` - Documentation updates

### Workflow Process
1. Create feature branches from `development`
2. Make changes in feature branch
3. Create PR to merge feature branch → `development`
4. After testing, create PR to merge `development` → `main`

### Example Workflow
```bash
# Start new feature
git checkout development
git pull origin development
git checkout -b feature/add-italic-support

# Make changes and commit
git add .
git commit -m "feat: add italic support for comments"

# Push feature branch
git push origin feature/add-italic-support

# Create PR from feature/add-italic-support to development
# After review and merge, delete feature branch
# Later, create PR from development to main for release
```

## Theme Structure

### Core Files
- `colors/cosmic-latte.lua` - Light theme definition
- `colors/cosmic-latte-dim.lua` - Dim theme definition  
- `lua/cosmic-latte/theme.lua` - Main theme engine
- `lua/cosmic-latte/palettes/` - Color palette definitions

### Color Palette Files
- `palettes/cosmic_latte.lua` - Light theme colors
- `palettes/cosmic_mocha_latte.lua` - Dim theme colors

## Development Guidelines

### Adding New Highlight Groups
1. Add the highlight group in `lua/cosmic-latte/theme.lua`
2. Test with both light and dim themes
3. Ensure contrast ratios meet accessibility standards

### Color Philosophy
- Light theme: High contrast with warm, cosmic-inspired colors
- Dim theme: Softer contrast for reduced eye strain
- Cosmic coral (#ff8e7f) as the signature accent color
- Maintain consistency with solarized color theory

### Testing
- Test all changes with both themes
- Verify TreeSitter highlights work correctly
- Check LSP semantic highlights
- Test with common plugins (telescope, nvim-tree, etc.)

## Pull Request Guidelines

- Include before/after screenshots for visual changes
- Test with multiple file types (lua, javascript, markdown, etc.)
- Update documentation if adding new features
- Follow conventional commits format

## Release Process

1. Merge all approved features to `development`
2. Test thoroughly in development branch
3. Create PR from `development` to `main`
4. Tag release on main branch with semantic versioning