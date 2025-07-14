-- Cosmic Latte Dim - A dim variant with the same bright red accents
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "cosmic-latte-dim"
vim.o.termguicolors = true

-- Dim color palette - dark gray theme with bright red
local colors = {
  -- Dark gray base colors instead of green-tinted solarized
  base3 = "#1a1a1a",  -- very dark gray background
  base2 = "#2d2d2d",  -- dark gray background highlights
  base1 = "#6c6c6c",  -- emphasized content
  base0 = "#8a8a8a",  -- comments
  base00 = "#b8b8b8", -- body text / default code
  base01 = "#d0d0d0", -- emphasized content
  base02 = "#e8e8e8", -- light background highlights  
  base03 = "#f5f5f5", -- lightest - for text on dark
  base4 = "#0f0f0f",  -- even darker bg for contrast
  
  -- Same accent colors but adapted for dark theme
  yellow = "#b58900",   -- warnings
  red = "#dc322f",      -- errors
  bright_red = "#e53e3e", -- special/preprocessor (same vibrant red)
  violet = "#6c71c4",   -- types
  blue = "#268bd2",     -- functions/keywords
  cyan = "#2aa198",     -- strings/constants
  green = "#859900",    -- statements
  
  -- Cosmic accent adapted for dark
  cosmic = "#ff8e7f",   -- brighter cosmic for dark bg
  cosmic_dark = "#e67a6b", -- darker version
  
  -- High contrast additions for dim theme
  light_text = "#f5f5f5", -- very light text for maximum readability
  cursor_bg = "#f5f5f5",  -- light cursor background for visibility on dark
  cursor_line_bg = "#2d2d2d", -- subtle cursor line
}

-- Helper function
local function hi(group, opts)
  local cmd = "hi " .. group
  if opts.fg then cmd = cmd .. " guifg=" .. opts.fg end
  if opts.bg then cmd = cmd .. " guibg=" .. opts.bg end
  if opts.style then cmd = cmd .. " gui=" .. opts.style end
  vim.cmd(cmd)
end

-- Editor - High contrast for dim theme
hi("Normal", { fg = colors.light_text, bg = colors.base3 })
hi("NormalFloat", { fg = colors.light_text, bg = colors.base4 })
hi("Cursor", { fg = colors.base3, bg = colors.cursor_bg }) -- Light cursor for dark background
hi("iCursor", { fg = colors.base3, bg = colors.cursor_bg }) -- Insert mode cursor
hi("vCursor", { fg = colors.base3, bg = colors.cursor_bg }) -- Visual mode cursor
hi("rCursor", { fg = colors.base3, bg = colors.cursor_bg }) -- Replace mode cursor
hi("CursorLine", { bg = colors.cursor_line_bg })
hi("LineNr", { fg = colors.base0 })
hi("CursorLineNr", { fg = colors.cosmic, style = "bold" })
hi("SignColumn", { fg = colors.base0, bg = colors.base3 })
hi("ColorColumn", { bg = colors.base2 })

-- Better contrast for UI elements
hi("VertSplit", { fg = colors.base1, bg = colors.base3 })
hi("WinSeparator", { fg = colors.base1, bg = colors.base3 })
hi("StatusLine", { fg = colors.base03, bg = colors.base1 })
hi("StatusLineNC", { fg = colors.base0, bg = colors.base2 })

-- Search with high contrast
hi("Search", { fg = colors.base3, bg = colors.yellow })
hi("IncSearch", { fg = colors.base3, bg = colors.cosmic })
hi("Visual", { fg = colors.base03, bg = colors.base1 })

-- Syntax highlighting - adapted for dim theme
hi("Comment", { fg = colors.base0, style = "italic" })
hi("Constant", { fg = colors.cyan })
hi("String", { fg = colors.light_text })
hi("Number", { fg = colors.cyan })
hi("Boolean", { fg = colors.cyan })
hi("Identifier", { fg = colors.base03 })
hi("Function", { fg = colors.blue, style = "bold" })
hi("Statement", { fg = colors.green, style = "bold" })
hi("Keyword", { fg = colors.green, style = "bold" })
hi("PreProc", { fg = colors.bright_red }) -- same bright red
hi("Type", { fg = colors.violet, style = "bold" })
hi("Special", { fg = colors.red })
hi("Error", { fg = colors.red, bg = colors.base2, style = "bold" })
hi("Todo", { fg = colors.cosmic, bg = colors.base2, style = "bold" })

-- Diff colors with better contrast
hi("DiffAdd", { fg = colors.green, bg = colors.base2, style = "bold" })
hi("DiffChange", { fg = colors.yellow, bg = colors.base2, style = "bold" })
hi("DiffDelete", { fg = colors.red, bg = colors.base2, style = "bold" })
hi("DiffText", { fg = colors.base03, bg = colors.yellow })

-- Git signs
hi("GitSignsAdd", { fg = colors.green })
hi("GitSignsChange", { fg = colors.yellow })
hi("GitSignsDelete", { fg = colors.red })

-- LSP diagnostics with clear contrast
hi("DiagnosticError", { fg = colors.red, style = "bold" })
hi("DiagnosticWarn", { fg = colors.yellow, style = "bold" })
hi("DiagnosticInfo", { fg = colors.blue })
hi("DiagnosticHint", { fg = colors.cyan })

-- Telescope - clean and minimal for dim
hi("TelescopeNormal", { fg = colors.base03, bg = colors.base3 })
hi("TelescopeBorder", { fg = colors.cosmic, bg = colors.base3 })
hi("TelescopeSelection", { fg = colors.base03, bg = colors.base2, style = "bold" })
hi("TelescopeSelectionCaret", { fg = colors.cosmic, style = "bold" })
hi("TelescopeMatching", { fg = colors.cosmic, style = "bold" })

-- Alpha dashboard
hi("AlphaHeader", { fg = colors.cosmic })
hi("AlphaButtons", { fg = colors.blue })
hi("AlphaShortcut", { fg = colors.bright_red }) -- same bright red
hi("AlphaFooter", { fg = colors.base0 })

-- Terminal-friendly UI elements
hi("Title", { fg = colors.blue, style = "bold" })
hi("Directory", { fg = colors.bright_red, style = "bold" })
hi("ErrorMsg", { fg = colors.red, bg = colors.base2, style = "bold" })
hi("WarningMsg", { fg = colors.yellow, style = "bold" })
hi("MoreMsg", { fg = colors.green })
hi("Question", { fg = colors.cyan })
hi("NonText", { fg = colors.base1 })
hi("SpecialKey", { fg = colors.base1 })
hi("Whitespace", { fg = colors.base2 })
hi("Conceal", { fg = colors.base0 })
hi("EndOfBuffer", { fg = colors.base2 })

-- Popup menu with better contrast
hi("Pmenu", { fg = colors.base03, bg = colors.base2 })
hi("PmenuSel", { fg = colors.base3, bg = colors.cosmic })
hi("PmenuSbar", { bg = colors.base1 })
hi("PmenuThumb", { bg = colors.cosmic })

-- Clean tabs
hi("TabLine", { fg = colors.base0, bg = colors.base2 })
hi("TabLineFill", { fg = colors.base0, bg = colors.base2 })
hi("TabLineSel", { fg = colors.base03, bg = colors.base3, style = "bold" })

-- Folds
hi("Folded", { fg = colors.base0, bg = colors.base2, style = "italic" })
hi("FoldColumn", { fg = colors.base0, bg = colors.base3 })

-- Matching brackets
hi("MatchParen", { fg = colors.cosmic, bg = colors.base2, style = "bold" })

-- Spell checking
hi("SpellBad", { fg = colors.red, style = "undercurl" })
hi("SpellCap", { fg = colors.yellow, style = "undercurl" })
hi("SpellLocal", { fg = colors.cyan, style = "undercurl" })
hi("SpellRare", { fg = colors.bright_red, style = "undercurl" })

-- Terminal colors for consistency
vim.g.terminal_color_0 = colors.base02
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.bright_red
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.base2
vim.g.terminal_color_8 = colors.base03
vim.g.terminal_color_9 = colors.red
vim.g.terminal_color_10 = colors.green
vim.g.terminal_color_11 = colors.yellow
vim.g.terminal_color_12 = colors.blue
vim.g.terminal_color_13 = colors.bright_red
vim.g.terminal_color_14 = colors.cyan
vim.g.terminal_color_15 = colors.base3

-- Additional accessibility improvements
hi("CursorIM", { fg = colors.base3, bg = colors.cosmic }) -- Input method cursor
hi("lCursor", { fg = colors.base3, bg = colors.cosmic }) -- Language cursor