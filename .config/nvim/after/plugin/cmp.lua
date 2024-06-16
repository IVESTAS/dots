local cmp = require('cmp')

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
