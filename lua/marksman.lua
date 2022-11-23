
-- Use Marksman for markdown
require'lspconfig'.marksman.setup{}

-- Set the filetype of *.mdx files to markdown
require("filetype").setup({
    overrides = {
        extensions = {
            mdx = "markdown",
        },
   },
})
