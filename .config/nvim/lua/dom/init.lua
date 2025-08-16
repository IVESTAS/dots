require("dom.remap")
require("dom.set")
require("dom.lazy_init")

local augroup = vim.api.nvim_create_augroup
local domGroup = augroup('dom', {})
local autocmd = vim.api.nvim_create_autocmd

--vim.api.nvim_create_autocmd("BufEnter", {
--  callback = function()
--    vim.diagnostic.config({ virtual_text = false })
--    vim.diagnostic.config({ underline = false })
--  end,
--})

vim.diagnostic.config {
  virtual_text = false,
  --severity_sort = true,
  underline = false,

  signs = {
    linehl = {
      [vim.diagnostic.severity.ERROR] = "None",
      [vim.diagnostic.severity.WARN] = "None",
      [vim.diagnostic.severity.HINT] = "None",
      [vim.diagnostic.severity.INFO] = "None",
    },
  },
}

autocmd('LspAttach', {
  group = domGroup,
  callback = function(e)
    local opts = { buffer = e.buf }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  end
})
