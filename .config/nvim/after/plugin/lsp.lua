local lspconfig = require('lspconfig')

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        on_attach = on_attach
        local opts = { buffer = event.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        --vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end
})


-- Disable syntax highlighting through lsp
--for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
--vim.api.nvim_set_hl(0, group, {})
--end

require('mason').setup()
require('mason-lspconfig').setup()

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
