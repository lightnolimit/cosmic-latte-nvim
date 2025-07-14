# Cosmic Latte Theme for Neovim

A solarized-inspired colorscheme for Neovim with a cosmic coral accent. Features both light and dim variants.

## Features

- Light variant (`cosmic-latte`)
- Dim variant (`cosmic-latte-dim`) - default theme
- Full LSP, Treesitter, and plugin support
- Git status colors and diagnostic highlighting
- Cosmic coral accent (`#ff8e7f`)

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "lightnolimit/cosmic-latte-theme-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optional: Set default variant (defaults to 'dim')
    vim.g.cosmic_latte_variant = "dim" -- or "light"
    
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

- `:CosmicLatteLight` - Switch to light theme
- `:CosmicLatteDim` - Switch to dim theme (Cosmic Mocha Latte)

### Configuration

Set the default variant before loading the colorscheme:

```lua
-- In your init.lua
vim.g.cosmic_latte_variant = "dim" -- or "light"
vim.cmd.colorscheme("cosmic-latte")
```

## Variants

### Light Theme
Clean and bright for daytime coding with soft pastels.

### Dim Theme (Cosmic Mocha Latte)
A darker, more subdued variant perfect for extended coding sessions.

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
- Built for the amazing [Neovim](https://neovim.io/) community