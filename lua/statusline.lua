vim.cmd([[
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{get(b:,'gitsigns_head','')}
set statusline+=\ 
set statusline+=%{get(b:,'gitsigns_status','')}
set statusline+=%#LineNr#
set statusline+=%#PmenuSel#
set statusline+=\ %t
set statusline+=\ %m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %p%%
]])
