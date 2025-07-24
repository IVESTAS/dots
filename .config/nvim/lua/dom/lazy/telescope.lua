return {
     "nvim-telescope/telescope.nvim",
     dependencies = {
         "nvim-lua/plenary.nvim"
     },

    config = function()
    require('telescope').setup({
		defaults = {
			file_ignore_patterns = { "%.o", "%.so.3.4", "%.so", "%.out"},
			preview = {
				treesitter = false
			}
		},
	})

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>;f', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>;s', builtin.live_grep, { desc = 'Telescope live grep' })
end
}
