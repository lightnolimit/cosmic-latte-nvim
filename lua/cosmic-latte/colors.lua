-- Color palette for Cosmic Latte theme
local M = {}

M.colors = {
  -- Base solarized colors
  base03 = "#002b36", -- darkest
  base02 = "#073642",
  base01 = "#586e75", -- optional emphasized content
  base00 = "#657b83", -- body text / default code / primary content
  base0 = "#839496",  -- comments / secondary content
  base1 = "#93a1a1",  -- emphasized content
  base2 = "#eee8d5",  -- background highlights
  base3 = "#fff8e7",  -- background (actual cosmic latte color of the universe)
  
  -- Accent colors
  yellow = "#b58900",
  orange = "#cb4b16",
  red = "#dc322f",
  magenta = "#d33682",
  violet = "#6c71c4",
  blue = "#268bd2",
  cyan = "#6E5064",  -- cosmic spectrum green (the false color easter egg)
  green = "#859900",
  
  -- Cosmic latte special colors
  cosmic = "#ff8e7f", -- Main cosmic accent
  cosmic_dark = "#e67a6b",
  cosmic_light = "#ffb5aa",
}

return M