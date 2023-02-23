-- :h mason-default-settings
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "bashls",
    "cssls",
    "html",
		"tsserver",
		"marksman",
		"jdtls",
		"jsonls",
		"ruby_ls",
    "rust_analyzer"
  },
})

