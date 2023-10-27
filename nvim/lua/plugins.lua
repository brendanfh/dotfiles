vim.cmd [[packadd packer.nvim]]
    
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

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'

    use 'willthbill/opener.nvim'

    use 'onyx-lang/onyx.vim'
end)
