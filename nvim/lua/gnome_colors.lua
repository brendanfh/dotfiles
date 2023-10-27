local LIGHT_THEME = { "light", "catppuccin" }
local DARK_THEME  = { "dark",  "catppuccin-mocha" }

-- local LIGHT_THEME = { "light", "github_light_colorblind" }
-- local DARK_THEME  = { "dark",  "github_dark_high_contrast" }

function update_color_by_gnome()
    local handle = io.popen("gsettings get org.gnome.desktop.interface color-scheme")
    local color  = handle:read("*a");

    if color == "'prefer-dark'\n" then
        vim.cmd("set background=" .. DARK_THEME[1])
        vim.cmd("colorscheme " .. DARK_THEME[2])
        -- vim.cmd("hi Normal guibg=None")
    else
        vim.cmd("set background=" .. LIGHT_THEME[1])
        vim.cmd("colorscheme " .. LIGHT_THEME[2])
    end
end

vim.keymap.set('n', '<leader>cc', '<CMD>lua require("gnome_colors").update_color_by_gnome()<CR>')
vim.keymap.set('n', '<leader>cs', '<CMD>syn sync fromstart<CR>')

update_color_by_gnome()

vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<C-=>", function()
  change_scale_factor(1.25)
end)
vim.keymap.set("n", "<C-->", function()
  change_scale_factor(1/1.25)
end)

-- vim.o.guifont = "Spleen 32x64:h14"

return {
    update_color_by_gnome = update_color_by_gnome
}

