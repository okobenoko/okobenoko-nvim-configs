require('nvim-treesitter.configs').setup({                                               
    ensure_installed = {"html", "css", "vim", "lua", "javascript", "typescript", "c", "cpp", "java"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    incremental_selection = {
        enable = true
  }
})
