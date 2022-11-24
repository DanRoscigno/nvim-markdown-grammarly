-- Basic statusline, uses GitSigns to get the git branch/status
vim.cmd([[
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{get(b:,'gitsigns_head','')}
set statusline+=\ 
set statusline+=%{get(b:,'gitsigns_status','')}
set statusline+=%#LineNr#
set statusline+=%#PmenuSel#
" %t is the name of the file being edited
set statusline+=\ %t
set statusline+=\ %q
set statusline+=\ %m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %p%%
]])
