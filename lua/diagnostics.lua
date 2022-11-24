
local config = {
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
}

vim.diagnostic.config(config)

local silent_noremap = {
    noremap = true,
    silent = true
}

local function nsnoremap(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, silent_noremap)
end

nsnoremap(']d',   '<CMD>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>')
nsnoremap('[d',   '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>')
nsnoremap('gl',   '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>')
nsnoremap('gD',   '<cmd>lua vim.lsp.buf.declaration()<CR>')
nsnoremap('gd',   '<cmd>lua vim.lsp.buf.definition()<CR>')
nsnoremap('K',    '<cmd>lua vim.lsp.buf.hover()<CR>')
nsnoremap('gi',   '<cmd>lua vim.lsp.buf.implementation()<CR>')
nsnoremap('gr',   '<cmd>lua vim.lsp.buf.references()<CR>')
nsnoremap('C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
nsnoremap('<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')


