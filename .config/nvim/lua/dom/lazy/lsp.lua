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
                ['<C-Space>'] = cmp.mapping(cmp.mapping.select_next_item()),
                ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item()),
            }),
        })
        require('lspconfig').clangd.setup {}
        require('lspconfig').glsl_analyzer.setup {}
        require('lspconfig').ols.setup {}

		vim.api.nvim_create_autocmd("LspAttach", {
		  callback = function(args)
		    local client = vim.lsp.get_client_by_id(args.data.client_id)
		    if client then
		      client.server_capabilities.semanticTokensProvider = nil
		    end
		  end,
		})
	
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "cpp",
        callback = function()
            vim.opt_local.cindent = false
        end,
    })

	end
}
