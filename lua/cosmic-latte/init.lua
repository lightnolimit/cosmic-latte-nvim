local M = {}

M.setup = function(opts)
  opts = opts or {}
  
  -- Ensure termguicolors is enabled
  if vim.fn.has("termguicolors") == 1 then
    vim.opt.termguicolors = true
  end
  
  -- Load the colorscheme
  vim.cmd("colorscheme cosmic-latte")
end

return M