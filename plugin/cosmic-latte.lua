-- Auto-command to set up the theme
vim.api.nvim_create_user_command("CosmicLatte", function()
  vim.cmd("colorscheme cosmic-latte")
end, { desc = "Apply Cosmic Latte colorscheme" })