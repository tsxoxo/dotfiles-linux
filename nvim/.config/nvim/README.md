# My Neovim Config

## Cheatsheet

### Reload config file

`:so %`

### Get nvim sys dir

`:lua print(vim.fn.stdpath("config"))`

### Print lua table

Two methods:

1. Use `vim.inspect`: `:lua print(vim.inspect(vim.api.nvim_get_mark('U',{})))`
2. `:lua = vim.api.some_func()`

### Lua API basics

vim.cmd, vim.api, vim.fn, and vim.opt/opt_local/opt_window

NB: remember your friends: `:help vim.opt`, `:help lua-guide-options`

#### Examples

**vim.cmd**
Executes vim command foo via lua
`vim.cmd("foo")`

**vim.fn**
Runs vim function
`local current_file_path = vim.fn.expand('%:p')`

**vim.opt**
vim.opt.tabstop = 4 -- Global option
vim.opt.shiftwidth = 4 -- Global option
vim.opt.expandtab = true -- Global option
vim.opt.relativenumber = true -- Global relative line numbers

-- In an autocommand for Python files:
vim.api.nvim_create_autocmd('FileType', {
pattern = 'python',
callback = function()
vim.opt_local.tabstop = 4 -- Buffer-local for Python
vim.opt_local.shiftwidth = 4
vim.opt_local.expandtab = true
vim.opt_local.list = true -- Show whitespace characters
end
})

**vim.api**
Interact with Neovim's core state (buffers, windows, options, keymaps, etc.)

Get buffer id from a file-mark:
`local buf_id = vim.api.nvim_get_mark(mark_char, {})[3]`

## DEBUG

- formatting: `:ConformInfo`
- LSP: `:checkhealth lsp` or `checkhealth vim.lsp`

## Feature wishlist

- see all errors/diagnostics in project

