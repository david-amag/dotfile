vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer management
    use 'wbthomason/packer.nvim'
    -- Collection of configurations for the built-in LSP client
    use 'neovim/nvim-lspconfig' 
    -- LSP : Install if missing
    use "alexaandru/nvim-lspupdate"
    use "nanotee/nvim-lsp-basics"

    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- For vsnip users.
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'


    -- Snippets
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'

    -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/popup.nvim" 
    -- Useful lua functions used ny lots of plugins
    use "nvim-lua/plenary.nvim" 
    -- Colorscheme
    use "shaeinst/roshnivim-cs"
    -- Statusline
    use "feline-nvim/feline.nvim"

end)
