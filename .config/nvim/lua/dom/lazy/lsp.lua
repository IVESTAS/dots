return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()  
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim", 
    },
    config = function()
      require('lspconfig').lua_ls.setup({
        on_init = function(client, _)
          -- Disable semantic tokens 
          client.server_capabilities.semanticTokensProvider = nil
        end,
      })

      require('lspconfig').clangd.setup({
        on_init = function(client, _)
          -- Disable semantic tokens 
          client.server_capabilities.semanticTokensProvider = nil
        end,
      })

      require('lspconfig').hls.setup({
        filetypes = { 'haskell', 'lhaskell', 'cabal' },
      })

      require('lspconfig').svelte.setup({})

      require('lspconfig').marksman.setup({})

      require('lspconfig').rust_analyzer.setup({
        on_init = function(client, _)
          -- Disable semantic tokens
          client.server_capabilities.semanticTokensProvider = nil
        end,
      })

      require('lspconfig').pyright.setup({
        on_init = function(client, _)
          -- Disable semantic tokens
          client.server_capabilities.semanticTokensProvider = nil
        end,
      })

      require('lspconfig').tailwindcss.setup({
        on_init = function(client, _)
          -- Disable semantic tokens 
          client.server_capabilities.semanticTokensProvider = nil
        end,
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "cpp",
        callback = function()
          vim.opt_local.cindent = false
        end,
      })
    end,
  },
}

