# Cosmic Latte Theme for Neovim

A solarized-inspired colorscheme for Neovim based on the average color of the universe. Features light (Cosmic Latte), dim (Cosmic Mocha Latte), and transparent variants.

## Features

- Light variant - Cosmic Latte (the actual color of the universe #fff8e7)
- Dim variant - Cosmic Mocha Latte (default theme)
- Transparent variant - Dark theme with transparent background
- Full LSP, Treesitter, and plugin support
- Git status colors and diagnostic highlighting
- Cosmic coral accent (`#ff8e7f`)
- Easter egg: Cosmic spectrum green (`#6E5064`) - the false color from the original misinterpretation

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "lightnolimit/cosmic-latte-theme-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optional: Set default variant (defaults to 'dim')
    vim.g.cosmic_latte_variant = "dim" -- or "light" or "transparent"
    
    -- Load the colorscheme
    vim.cmd.colorscheme("cosmic-latte")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "lightnolimit/cosmic-latte-theme-nvim",
  config = function()
    vim.g.cosmic_latte_variant = "dim"
    vim.cmd.colorscheme("cosmic-latte")
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'lightnolimit/cosmic-latte-theme-nvim'
```

Then add to your init.vim:
```vim
let g:cosmic_latte_variant = "dim"
colorscheme cosmic-latte
```

## Usage

### Commands

- `:CosmicLatte` - Switch to Light theme (Cosmic Latte)
- `:CosmicLatteDim` - Switch to Dim theme (Cosmic Mocha Latte)
- `:CosmicLatteTransparent` - Switch to Transparent theme

### Configuration

Set the default variant before loading the colorscheme:

```lua
-- In your init.lua
vim.g.cosmic_latte_variant = "dim" -- or "light" or "transparent"
vim.cmd.colorscheme("cosmic-latte")
```

## Variants

### Light Theme (Cosmic Latte)
Inspired by the actual average color of the universe (#fff8e7). Clean and bright for daytime coding with soft pastels.

#### Light Theme Color Palette
- **Background**: `#fdf6e3` (warm off-white)
- **Background Highlights**: `#eee8d5` (subtle gray)
- **Cursor Line**: `#eee8d5` (subtle highlight)
- **Text**: `#073642` (very dark blue-gray for high contrast)
- **Comments**: `#839496` (medium gray)
- **Line Numbers**: `#657b83` (muted gray)
- **Cursor**: `#002b36` (very dark, almost black)

#### Light Theme Syntax Colors
- **Strings**: `#073642` (dark text)
- **Numbers/Constants**: `#2aa198` (cyan)
- **Functions**: `#268bd2` (blue)
- **Keywords/Statements**: `#859900` (green)
- **Types**: `#6c71c4` (violet)
- **Special/Preprocessor**: `#e53e3e` (bright red)
- **Errors**: `#dc322f` (red)
- **Warnings**: `#b58900` (yellow)
- **Cosmic Accent**: `#e67a6b` (coral) / `#ff8e7f` (bright coral for highlights)

### Dim Theme (Cosmic Mocha Latte)
A darker, more subdued variant perfect for extended coding sessions.

#### Dim Theme Color Palette
- **Background**: `#1a1a1a` (very dark gray)
- **Background Highlights**: `#2d2d2d` (dark gray)
- **Cursor Line**: `#2d2d2d` (subtle highlight)
- **Text**: `#f5f5f5` (very light gray for high contrast)
- **Comments**: `#8a8a8a` (medium gray)
- **Line Numbers**: `#8a8a8a` (medium gray)
- **Cursor**: `#f5f5f5` (white)

#### Dim Theme Syntax Colors
- **Strings**: `#f5f5f5` (light text)
- **Numbers/Constants**: `#2aa198` (cyan)
- **Functions**: `#268bd2` (blue)
- **Keywords/Statements**: `#859900` (green)
- **Types**: `#6c71c4` (violet)
- **Special/Preprocessor**: `#e53e3e` (bright red)
- **Errors**: `#dc322f` (red)
- **Warnings**: `#b58900` (yellow)
- **Cosmic Accent**: `#ff8e7f` (bright coral) / `#e67a6b` (darker coral variant)

### Transparent Theme
A dark theme with transparent background for terminal transparency support.

#### Transparent Theme Color Palette
- **Background**: `NONE` (transparent)
- **Background Highlights**: `#2d2d2d` (dark gray)
- **Cursor Line**: `#2d2d2d` (subtle highlight)
- **Text**: `#f5f5f5` (very light gray for high contrast)
- **Comments**: `#8a8a8a` (medium gray)
- **Line Numbers**: `#8a8a8a` (medium gray)
- **Cursor**: `#f5f5f5` (white)
- **Floating Windows**: `#0f0f0f` (darker background for contrast)

#### Transparent Theme Syntax Colors
Same as the Dim theme but optimized for transparent backgrounds.

## Requirements

- Neovim 0.8.0 or higher
- True color terminal support

## 📸 Screenshots

*Coming soon...*

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest improvements
- Add support for new plugins
- Improve documentation

## 📄 License

MIT License - Feel free to use, modify, and distribute!

## 🙏 Acknowledgments

- Inspired by the [Solarized](https://ethanschoonover.com/solarized/) color scheme
- Based on [Cosmic Latte](https://en.wikipedia.org/wiki/Cosmic_latte) - the average color of the universe