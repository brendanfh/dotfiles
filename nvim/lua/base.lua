local g = vim.g
local o = vim.o

o.wrap = false
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.smartindent = true
o.linebreak = true
o.hlsearch = false
o.errorbells = false
o.ignorecase = true
o.smartcase = true
o.swapfile = false
o.backup = false
o.undodir = "/home/brendan/.vim/undodir"
o.undofile = true
o.incsearch = true
o.splitbelow = true
o.splitright = true
o.showtabline = true
o.encoding = "UTF-8"
o.cindent = false
o.showtabline = 2

o.mouse = "niv"

o.termguicolors = true
o.background = "dark"
o.timeoutlen = 500
o.updatetime = 200

o.scrolloff = 4
 
o.number = true
o.relativenumber = true
o.numberwidth = 4
o.signcolumn = 'yes'

o.expandtab = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

o.clipboard = 'unnamedplus'

o.completeopt = 'menuone,noinsert,noselect'
o.shortmess = o.shortmess .. "c"

o.cino = o.cino .. "L0"

g.mapleader = ' '
g.maplocalleader = ' '

g.do_filetype_lua = 1

vim.filetype.add({
    extension = {
        onyx = "onyx",
    },
    pattern = {
        [".*onyx$"] = "onyx",
    },
})
