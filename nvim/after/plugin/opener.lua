
require('telescope').load_extension("opener")

require('telescope').setup {
    extensions = {
        opener = {
            hidden = false,
            root_dir = "~",
            respect_gitignore = true
        }
    }
}

require('opener').setup{}



