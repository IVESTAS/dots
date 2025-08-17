return {
  {
    "Yggdroot/indentLine",
    config = function()
      -- Optional: Add configuration for indentLine
      vim.g.indentLine_leadingSpaceEnabled = 1
      vim.g.indentLine_leadingSpaceChar = '·'
      vim.g.indentLine_char_list = {'·'}
    end,
  },
}
