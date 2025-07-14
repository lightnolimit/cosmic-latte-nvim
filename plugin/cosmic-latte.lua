-- Create commands to switch between themes
vim.api.nvim_create_user_command("CosmicLatteDim", function()
  vim.cmd("colorscheme cosmic-latte-dim")
end, { desc = "Switch to Cosmic Latte Dim theme (Cosmic Mocha Latte)" })

vim.api.nvim_create_user_command("CosmicLatteLight", function()
  vim.cmd("colorscheme cosmic-latte")
end, { desc = "Switch to Light theme (Cosmic Latte)" })