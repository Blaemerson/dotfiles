-- hide line numbers , statusline in specific buffers!
vim.api.nvim_exec([[
    au TermOpen term://* setlocal nonumber laststatus=0
    au TermClose term://* bd!
    au TermOpen term://* startinsert
    au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | endif
    augroup END
]], false)

-- vim.api.nvim_command([[ ]])

--we can load shada now
vim.opt.shadafile = ""
