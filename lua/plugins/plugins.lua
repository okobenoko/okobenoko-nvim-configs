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
-- LSP
"williamboman/mason.nvim",
"williamboman/mason-lspconfig.nvim",
"neovim/nvim-lspconfig",
"hrsh7th/cmp-nvim-lsp",
"hrsh7th/cmp-buffer",
"hrsh7th/cmp-path",
"hrsh7th/cmp-cmdline",
"hrsh7th/nvim-cmp",
"hrsh7th/cmp-vsnip",
"hrsh7th/vim-vsnip",
"onsails/lspkind-nvim",
"nvim-lualine/lualine.nvim"
})
-- Bootload One line of bootable plugins

