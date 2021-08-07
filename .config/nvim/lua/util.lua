-- hide line numbers , statusline in specific buffers!
vim.api.nvim_exec([[
    au TermOpen term://* setlocal nonumber laststatus=0
    au TermClose term://* bd!
    au TermOpen term://* startinsert
    au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | endif
    augroup END
]], false)

local cmd = vim.cmd

-- Shortcuts for editing the keymap file and reloading the config
--cmd [[command! -nargs=* NvimEditInit edit $MYVIMRC]]
--cmd [[command! -nargs=* NvimEditKeymap edit ~/.config/nvim/lua/keymap.lua]]
--cmd [[command! -nargs=* NvimEditUtil edit ~/.config/nvim/lua/util.lua]]
--cmd [[command! -nargs=* NvimEditOptions edit ~/.config/nvim/lua/options.lua]]
--cmd [[command! -nargs=* NvimEditTheme edit ~/.config/nvim/lua/theme.lua]]
cmd [[command! -nargs=* NvimSource luafile %]]

-- Shortcuts for opening terminal
cmd [[command! -nargs=* Terminal term]]
cmd [[command! -nargs=* TerminalVert 50vsplit | term ]]
cmd [[command! -nargs=* TerminalHori 10split | term]]

-- vim.api.nvim_command([[ ]])
-- Remove trailing whitespaces
-- cmd([[autocmd BufWritePre * %s/\s\+$//e]])
-- cmd([[autocmd BufWritePre * %s/\n\+\%$//e]])

-- cmd([[packadd nvim-compe]])

--we can load shada now
vim.opt.shadafile = ""
