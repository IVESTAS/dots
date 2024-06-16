--require("catppuccin").setup {
--
--    styles = {
--        comments = {"italic"},
--        conditionals = {},
--        miscs = {},
--    },
--    integrations = {
--        treesitter = true,
--    },
--    color_overrides = {
--        mocha = {},
--    },
--    custom_highlights = function(colors)
--        return {
--            Comment = { fg = colors.subtext0},
--        }
--    end,
--}
require("kanagawa").setup{}

vim.cmd.colorscheme "kanagawa"

--vim.api.nvim_create_autocmd("BufEnter", {
--    pattern = "*.c",
--    callback = function()
--        vim.cmd.colorscheme "plain"
--    end,
--})
