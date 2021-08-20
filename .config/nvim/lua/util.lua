-- hide line numbers , statusline in specific buffers!
vim.api.nvim_exec([[
    au TermClose term://* bd!
    au TermOpen,BufEnter term://* startinsert | setlocal nonumber norelativenumber laststatus=0
    au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | endif
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=100}
    augroup END
]], false)
    -- au BufEnter,BufWinEnter,WinEnter,CmdwinEnter *.md Writing
    -- au TermOpen term://* setlocal nonumber laststatus=0
    -- au InsertEnter * packadd compe

local cmd = vim.cmd

-- Shortcuts for opening terminal
cmd [[command! -nargs=* Terminal term]]
cmd [[command! -nargs=* TerminalVert 50vsplit | term ]]
cmd [[command! -nargs=* TerminalHori 10split | term]]

cmd [[command! -nargs=* Writing packadd papercolor-theme-slim | set background=light | color PaperColorSlim ]]
cmd [[command! -nargs=* PDF !pandoc -s -V geometry=margin=1in -o %:r.pdf % && zathura %:r.pdf &disown ]]

-- Remove trailing whitespaces
-- cmd([[autocmd BufWritePre * %s/\s\+$//e]])
-- cmd([[autocmd BufWritePre * %s/\n\+\%$//e]])

-- cmd([[packadd nvim-compe]])

--we can load shada now
vim.opt.shadafile = ""
