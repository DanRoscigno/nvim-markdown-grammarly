
vim.diagnostic.config(
 {
  -- Grammarly default is to show the issue
  -- at the end of the line, I prefer it in
  -- a float, so turn off the virtual text
  virtual_text = false,
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
  },
})

-- If there are any diagnostic messages from the Marksman 
-- or Grammarly LSPs, then there will be marks in the far left
-- column.  `E` for error, `W` for warning, etc.  The two
-- keymaps below will cycle through the diagnostic messages.
-- type `]d` to go forward, and `[d` to go backward:
vim.api.nvim_set_keymap(
  'n',
  ']d',
  '<CMD>lua vim.diagnostic.goto_next()<CR>',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  'n',
  '[d',
  '<cmd>lua vim.diagnostic.goto_prev()<CR>',
  { noremap = true, silent = true }
)

