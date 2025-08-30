-- Create commands to switch between themes
vim.api.nvim_create_user_command("CosmicLatte", function()
  vim.cmd("colorscheme cosmic-latte")
end, { desc = "Switch to Light theme (Cosmic Latte)" })

vim.api.nvim_create_user_command("CosmicLatteDim", function()
  vim.cmd("colorscheme cosmic-latte-dim")
end, { desc = "Switch to Dim theme (Cosmic Mocha Latte)" })

vim.api.nvim_create_user_command("CosmicLatteTransparent", function()
  vim.cmd("colorscheme cosmic-latte-transparent")
end, { desc = "Switch to Transparent theme (Cosmic Latte Transparent)" })