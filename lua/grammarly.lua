
require('lspconfig').grammarly.setup({
    cmd = { "/home/droscigno/GitHub/grammarly/extension/node_modules/.bin/grammarly-languageserver", "--stdio" },
    filetypes = { "markdown", "text" },
    init_options = {
        clientId = 'client_BaDkMgx4X19X9UxxYRCXZo',
    },
})
