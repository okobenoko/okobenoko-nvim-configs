local opt = vim.opt

-- Line Number
opt.number = true
opt.relativenumber = true

-- Retraction
opt.tabstop = 2
opt.autoindent = true

-- Coursorline
opt.cursorline = true

-- The default new windows are on the right and below
opt.splitright = true
opt.splitbelow = true

-- Theme
opt.termguicolors = true
opt.signcolumn = "yes"

-- Close new line comment
vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = "*",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
    end,
})

-- Create missing directory by command "MakeDirectory"
vim.api.nvim_create_user_command("MakeDirectory", function()
    ---@diagnostic disable-next-line: missing-parameter
    local path = vim.fn.expand("%")
    local dir = vim.fn.fnamemodify(path, ":p:h")
    if vim.fn.isdirectory(dir) == 0 then
        vim.fn.mkdir(dir, "p")
    else
        vim.notify("Directory already exists", "WARN", { title = "Nvim" })
    end
end, { desc = "Create directory if it doesn't exist" })

