-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Colorschemes
    use { "rebelot/kanagawa.nvim" }
    use {'andreypopp/vim-colors-plain' }

    -- Plugins
    use { 'mbbill/undotree' }
    use { 'Yggdroot/indentLine' }
    use { 'ThePrimeagen/harpoon' }
    use { 'christoomey/vim-tmux-navigator' }

    -- LSP and auto complete
    use { 'neovim/nvim-lspconfig' }
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim' }
    use { 'hrsh7th/nvim-cmp' }

    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'L3MON4D3/LuaSnip' }

    use { 'rust-lang/rust.vim' }
    use { 'nvim-treesitter/nvim-treesitter' }
end)
