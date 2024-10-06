return {
    "EdenEast/nightfox.nvim", -- lazy

    config = function()
     require("nightfox").setup({
  palettes = {
    -- Custom duskfox with black background
    nightfox= {
      --comment = "#719cd6", -- blue 
      comment = "#81b29a", -- green
    },
}})

    vim.cmd.colorscheme 'nightfox'
    vim.cmd.syntax 'off'
end
}
