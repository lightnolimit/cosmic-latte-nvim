# Cosmic Latte Theme for Neovim

A solarized-inspired colorscheme for Neovim based on the average color of the universe. Features both light (Cosmic Latte) and dim (Cosmic Mocha Latte) variants.

## Features

- Light variant - Cosmic Latte (the actual color of the universe #fff8e7)
- Dim variant - Cosmic Mocha Latte (default theme)
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

- `:CosmicLatteLight` - Switch to Light theme (Cosmic Latte)
- `:CosmicLatteDim` - Switch to Dim theme (Cosmic Mocha Latte)

### Configuration

Set the default variant before loading the colorscheme:

```lua
-- In your init.lua
vim.g.cosmic_latte_variant = "dim" -- or "light"
vim.cmd.colorscheme("cosmic-latte")
```

## Variants

### Light Theme (Cosmic Latte)
Inspired by the actual average color of the universe (#fff8e7). Clean and bright for daytime coding with soft pastels.

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
- Based on [Cosmic Latte](https://en.wikipedia.org/wiki/Cosmic_latte) - the average color of the universe