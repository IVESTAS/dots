return {
    "EdenEast/nightfox.nvim", -- lazy
--    "rebelot/kanagawa.nvim",
--    'andreypopp/vim-colors-plain',
--    "blazkowolf/gruber-darker.nvim",

    config = function()
    require("nightfox").setup{}
 --   require("kanagawa").setup{}
    vim.cmd.colorscheme 'nightfox'
end
}
