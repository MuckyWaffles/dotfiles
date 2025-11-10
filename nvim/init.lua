o = vim.opt

-- Use system clipboard
o.clipboard = "unnamedplus"
o.completeopt = { "menu", "menuone", "noselect" }
-- Allow mouse to be used
o.mouse = "a"

-- Tab
o.tabstop = 4 -- Visual spaces per tab
o.softtabstop = 4 -- Number of spaces in tab when editing
o.shiftwidth = 4 -- Insert 4 spaces on tab
o.expandtab = true

-- UI config
o.number = true
o.relativenumber = true
o.cursorline = true

-- Vim default split direction seems screwed, fix pls!
o.splitright = true
o.splitbelow = true

o.showmode = false

-- Searching
o.incsearch = true -- Search as characters are entered
o.hlsearch = true -- Highlight matches
o.ignorecase = true -- Ignore case in searches
o.smartcase = true -- Make search case sensitive if upper case is entered

require("plugins")
require("lsp")

vim.g.have_nerd_font = true
