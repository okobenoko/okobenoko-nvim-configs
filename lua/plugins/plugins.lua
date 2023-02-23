-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ 
"olimorris/onedarkpro.nvim",
"nvim-treesitter/nvim-treesitter",
"kyazdani42/nvim-tree.lua",
"kyazdani42/nvim-web-devicons",
"williamboman/mason.nvim",
"williamboman/mason-lspconfig.nvim",
"neovim/nvim-lspconfig",
"nvim-lualine/lualine.nvim"
})
-- Bootload One line of bootable plugins

