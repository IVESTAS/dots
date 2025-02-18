return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        local cmp = require('cmp')
        require("mason").setup()
        require("mason-lspconfig").setup()
        cmp.setup({
            sources = {
                {
                     name = "buffer" ,
                     max_item_count = 3,
                },
            },
            mapping = cmp.mapping.preset.insert({
                --['<S-Tab>'] = cmp.mapping.confirm({ select = true}),
                ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item()),
                ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item()),
            }),
        })
        require('lspconfig').clangd.setup {
            on_init = function(client, _)
                client.server_capabilities.semanticTokensProvider = nil -- turn off semantic tokens
            end,
        }
        require('lspconfig').ols.setup {
            on_init = function(client, _)
--                client.server_capabilities.semanticTokensProvider = nil -- turn off semantic tokens
            end,
        }
        require('lspconfig').glsl_analyzer.setup {
            on_init = function(client, _)
                --client.server_capabilities.semanticTokensProvider = nil -- turn off semantic tokens
            end,
        }

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "cpp",
            callback = function()
                vim.opt_local.cindent = false
            end,
        })
    end
}

