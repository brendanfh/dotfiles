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
