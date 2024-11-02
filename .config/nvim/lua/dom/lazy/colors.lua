return {
    "EdenEast/nightfox.nvim", -- lazy

    config = function()
     require("nightfox").setup({
  palettes = {
    -- Custom duskfox with black background
    nightfox= {
       comment = "#81b29a",
       conditional = "#dbc074",
    },
}})

    vim.cmd.colorscheme 'nightfox'
    -- Set the color for strings
    --vim.api.nvim_set_hl(0, "conditional", { fg = "#dbc074" })
--    vim.cmd.syntax 'off'
end
}
