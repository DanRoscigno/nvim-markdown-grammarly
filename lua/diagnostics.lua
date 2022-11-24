
vim.diagnostic.config(
 {
  -- disable virtual text
  virtual_text = false,
  -- show signs
  signs = {
    active = signs,
  },
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    --prefix = "",
  },
})


vim.api.nvim_set_keymap('n', ']d',   '<CMD>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[d',   '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', { noremap = true, silent = true })


