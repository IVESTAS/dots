return {
     "nvim-telescope/telescope.nvim",
     dependencies = {
         "nvim-lua/plenary.nvim"
     },

    config = function()
    require('telescope').setup({})

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>;f', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>;s', builtin.live_grep, { desc = 'Telescope live grep' })
end
}
