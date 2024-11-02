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

    require('lspconfig').tailwindcss.setup({
    on_init = function(client, _)
        client.server_capabilities.semanticTokensProvider = nil -- turn off semantic tokens
    end,
    })

    vim.api.nvim_create_autocmd("FileType", {
        pattern = "cpp",
        callback = function()
            vim.opt_local.cindent = false
        end,
    })

    vim.api.nvim_create_autocmd("FileType", {
        pattern = "*", -- change to cpp if you want
        callback = function()
            -- Disable highlighting for keywords, types, and constants
            -- highlight! link Constant NONE
            vim.cmd([[
            highlight clear Constant NONE        " Constants
            highlight clear Number NONE          " General numbers
            highlight clear Float NONE           " Floating-point numbers
            highlight clear Integer NONE         " Integer numbers specifically
            highlight clear Boolean NONE         " Boolean values
            highlight clear Operator NONE        " Operators like +, -, *, /
            highlight clear Statement NONE
            highlight clear PreProc NONE         " Preprocessor directives like #include, #define
            highlight clear Define NONE          " Defines
            highlight clear Label NONE           " Labels, often used in goto statements
            highlight clear Include NONE         " #include specifically
            highlight clear Keyword NONE         " General keywords (including if, else)
            highlight clear Identifier NONE      " Generic identifiers to cover all variable names
            highlight clear Float NONE           " Floats specifically
            highlight clear Number NONE          " To ensure numbers are not highlighted
            highlight clear Special NONE         " Special keywords and constructs
            highlight clear Float NONE           " Floats specifically
            highlight clear Number NONE          " To ensure numbers are not highlighted

            highlight clear cOperator NONE       " C operators
            highlight clear cppStatement NONE
            highlight clear cppFloat NONE
            highlight clear cStatement NONE      " C/C++ statements like return, break
            highlight clear cppNumber NONE
            highlight clear cNumber NONE
            highlight clear cConstant NONE
            highlight clear cppDefine NONE
            highlight clear cPreProc NONE
            highlight clear cppPreProc NONE
            ]])
        end,
    })

end
}
