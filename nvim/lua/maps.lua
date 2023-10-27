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

-- map('n', '<leader>o :vsplit', 'term://bash<CR>')
-- map('n', '<leader>pm :make', 'all<CR>')

map('n', '<leader>pf', ':Telescope find_files<CR>')
map('n', '<leader>ff', ':Telescope live_grep<CR>')
map('n', '<leader>po', ':Telescope opener<CR>')

