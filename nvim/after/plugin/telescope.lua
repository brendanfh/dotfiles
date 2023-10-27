require 'telescope'.setup {
    defaults = {
        layout_config = {
            horizontal = {
                -- mirror = true
                prompt_position = 'top'
            }
        }
    }
}

require'telescope'.load_extension('project')

vim.api.nvim_set_keymap(
        'n',
        '<C-p>',
        ":lua require'telescope'.extensions.project.project{}<CR>",
        {noremap = true, silent = true}
)

require "telescope".load_extension "file_browser"

vim.api.nvim_set_keymap(
        'n',
        '<leader>fb',
        ':lua require"telescope".extensions.file_browser.file_browser{}<CR>',
        {noremap = true, silent = true}
)
