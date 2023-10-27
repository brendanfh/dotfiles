
local LIGHT_THEME = { "light", "catppuccin" }
local DARK_THEME  = { "dark",  "catppuccin" }

--[[

Plugins

--]]


require "packer" .startup(function()
	use 'wbthomason/packer.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-project.nvim'
	use 'nvim-lualine/lualine.nvim'
	-- use 'nanozuki/tabby.nvim'
    use 'numToStr/FTerm.nvim'
    use 'projekt0n/github-nvim-theme'
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = "nvim-tree/nvim-web-devicons"}
    use 'lewis6991/gitsigns.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'folke/trouble.nvim'
    use 'kdheepak/lazygit.vim'
    use 'christoomey/vim-tmux-navigator'

    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'

	use 'tpope/vim-fugitive'

    use 'ofirgall/ofirkai.nvim'
    use 'jhlgns/naysayer88.vim'
    use 'plan9-for-vimspace/acme-colors'
    use 'rockerBOO/boo-colorscheme-nvim'
    use "lunarvim/templeos.nvim"
    use "lunarvim/Onedarker.nvim"
    use 'marko-cerovac/material.nvim'
    use 'reubenlillie/mine-shaft'
    use 'Mofiqul/vscode.nvim'
    use { "ellisonleao/gruvbox.nvim" }
    use 'yasukotelin/shirotelin'
    use 'jacoborus/tender.vim'
    use 'tanvirtin/monokai.nvim'
    use 'hgoose/temple.vim'
    use { 'catppuccin/nvim', as = 'catppuccin' }


    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

    use 'weilbith/nvim-floating-tag-preview' -- , cmd = {'Ptag', 'Ptselect', 'Ptjump', 'Psearch', 'Pedit'} }
    
    -- use 'ldelossa/nvim-ide'
end)


--[[

Settings

--]]

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

--[[

    Keybindings

--]]

local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- map('n', '<C-h>', '<C-w>h')
-- map('n', '<C-j>', '<C-w>j')
-- map('n', '<C-k>', '<C-w>k')
-- map('n', '<C-l>', '<C-w>l')
map('n', '<C-h>', "<cmd> TmuxNavigateLeft<CR>")
map('n', '<C-j>', "<cmd> TmuxNavigateDown<CR>")
map('n', '<C-k>', "<cmd> TmuxNavigateUp<CR>")
map('n', '<C-l>', "<cmd> TmuxNavigateRight<CR>")

map('n', '<leader>m', ':Make<CR>')
map('n', '<F6>', ':set spell!<CR>')
map('n', '<F7>', ':set wrap!<CR>')
map('t', '<Esc>', '<C-\\><C-n')

map('n', '<leader>wh', '<C-w>h')
map('n', '<leader>wl', '<C-w>l')
map('n', '<leader>wj', '<C-w>j')
map('n', '<leader>wk', '<C-w>k')

map('n', '<leader>w[', '<C-w><')
map('n', '<leader>w]', '<C-w>>')
map('n', '<leader>w}', '<C-w>+')
map('n', '<leader>w{', '<C-w>-')

map('n', '<leader>wv', ':vnew<CR>')
map('n', '<leader>ws', ':new<CR>')
map('n', '<leader>wd', ':q<CR>')
map('n', '<leader>wo', '<C-w><C-o>')
map('n', '<leader>w=', '<C-w>=')

map('n', '<leader>tn', ':tabnew<CR>')
map('n', '<leader>td', ':tabclose<CR>')
map('n', '<leader>th', ':tabprev<CR>')
map('n', '<leader>tl', ':tabnext<CR>')
map('n', '<leader>to', ':tabonly<CR>')

map('n', '<leader>bb', ':buffers<CR>:buffer!<Space>')
map('n', '<leader>bn', ':enew!<CR>')
map('n', '<leader>bh', ':bprevious!<CR>')
map('n', '<leader>bl', ':bnext!<CR>')
map('n', '<leader>bd', ':bdelete<CR>')

map('n', '<leader>fl', ':lnext<CR>')
map('n', '<leader>fh', ':lprev<CR>')

map('n', '<leader>u', ':UndotreeShow<CR>')
map('n', '<leader>n', ':NvimTreeToggle<CR>')

map('n', '<leader>o :vsplit', 'term://bash<CR>')
map('n', '<leader>pm :make', 'all<CR>')

map('n', '<leader>pf', ':Telescope find_files<CR>')
map('n', '<leader>ff', ':Telescope live_grep<CR>')

--[[

    Plugin setup

--]]

-- require "tabby_no_nerd_font"
require "bufferline" .setup {
    options = {
        mode = "tabs",
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',

        -- Something is wrong with my colorschemes because this options does not work... :(
        -- separator_style = "slant",
        always_show_bufferline = true,

        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true
            }
        },

        hover = {
            enabled = true,
            delay = 100,
            reveal = {'close'}
        }
    }
}

require('gitsigns').setup {
  signs = {
    add          = { hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
    change       = { hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
    delete       = { hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
    topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
    changedelete = { hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
    untracked    = { hl = 'GitSignsAdd'   , text = '┆', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    component_separators = { left = ' ', right = ' '},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

-- Example keybindings
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

vim.keymap.set('n', '<leader>gg', '<CMD>LazyGit<CR>')


