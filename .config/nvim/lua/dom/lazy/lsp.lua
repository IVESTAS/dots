return { 
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
    },

    config = function()
        local cmp = require('cmp')

    require("mason").setup()
    require("mason-lspconfig").setup()

    
    cmp.setup({
        sources = {
            {
            name = "buffer", 
            max_item_count = 5,
            name = 'path',
            name = 'nvim_lsp'
            },
        },
        mapping = cmp.mapping.preset.insert({
            --['<S-Tab>'] = cmp.mapping.confirm({ select = true}),
            ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item()),
            ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item()),
    
        }),
    })

    require('lspconfig').lua_ls.setup({
    on_init = function(client, _)
--        client.server_capabilities.semanticTokensProvider = nil -- turn off semantic tokens
    end,
    })
    
    require('lspconfig').clangd.setup {
        on_init = function(client, _)
            client.server_capabilities.semanticTokensProvider = nil -- turn off semantic tokens
        end,
    }
    
    require('lspconfig')['hls'].setup {
        filetypes = { 'haskell', 'lhaskell', 'cabal' },
    }
    
    require('lspconfig').svelte.setup {}
    
    require'lspconfig'.marksman.setup{}
    
    require('lspconfig').rust_analyzer.setup {
        on_init = function(client, _)
            client.server_capabilities.semanticTokensProvider = nil -- turn off semantic tokens
        end,
    }

    require('lspconfig').pyright.setup({
        on_init = function(client, _)
            client.server_capabilities.semanticTokensProvider = nil -- turn off semantic tokens
    end,
    })

end
}
