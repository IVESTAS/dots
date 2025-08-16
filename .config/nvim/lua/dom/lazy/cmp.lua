return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
  },
  config = function()
    local cmp = require('cmp')
    cmp.setup({
      sources = {
        {
          name = "buffer" ,
          max_item_count = 3,
        },
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item()),
        ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item()),
      }),
    })
  end
}
