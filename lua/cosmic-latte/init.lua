local M = {}

M.setup = function(opts)
  opts = opts or {}
  
  -- Ensure termguicolors is enabled
  if vim.fn.has("termguicolors") == 1 then
    vim.opt.termguicolors = true
  end
  
  -- Get variant from global variable or default to 'dim'
  local variant = vim.g.cosmic_latte_variant or "dim"
  
  -- Load the appropriate colorscheme
  if variant == "light" then
    vim.cmd("colorscheme cosmic-latte")
  else
    vim.cmd("colorscheme cosmic-latte-dim")
  end
end

return M