vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

-- Shortcuts for editing the keymap file and reloading the config
vim.cmd [[command! -nargs=* NvimEditInit edit $MYVIMRC]]
vim.cmd [[command! -nargs=* NvimEditKeymap edit ~/.config/nvim/lua/keymap.lua]]
vim.cmd [[command! -nargs=* NvimEditUtil edit ~/.config/nvim/lua/util.lua]]
vim.cmd [[command! -nargs=* NvimEditOptions edit ~/.config/nvim/lua/options.lua]]
vim.cmd [[command! -nargs=* NvimEditTheme edit ~/.config/nvim/lua/theme.lua]]
vim.cmd [[command! -nargs=* NvimSource luafile %]]

-- Shortcuts for opening terminal
vim.cmd [[command! -nargs=* Terminal term]]
vim.cmd [[command! -nargs=* TerminalVert 30vsplit | term ]]
vim.cmd [[command! -nargs=* TerminalHori 10split | term]]

map('', '<leader>qq', ':q!<CR>', {silent = true})
map('', '<leader>qa', ':qa<CR>', {silent = true})
map('', '<leader>qw', ':wq<CR><CR>', {silent = true})
map('', '<leader>wq', ':wq<CR>', {silent = true})
map('', '<leader>ww', ':w<CR>', {silent = true})
map('', '<leader>wa', ':wa<CR>', {silent = true})

map('', '<leader>bd', ':bd<CR>', {silent = true})

-- Edit config files
map('', '<leader>ci', ':NvimEditInit<CR>',   { silent = true })
map('', '<leader>ck', ':NvimEditKeymap<CR>', { silent = true })
map('', '<leader>cu', ':NvimEditUtil<CR>', { silent = true })
map('', '<leader>ct', ':NvimEditTheme<CR>', { silent = true })
map('', '<leader>co', ':NvimEditOptions<CR>', { silent = true })
map('', '<leader>c.', ':NvimSource<CR>',     { silent = true })

-- Setting options
map('', '<leader>sn', ':set relativenumber! number<CR>',   { silent = true })
map('', '<leader>sN', ':set nonumber norelativenumber<CR>',   { silent = true })
map('', '<leader>sw', ':set wrap!<CR>',   { silent = true })

-- Finding files
map('', '<leader>ff', ':lua require("fzf-lua").files()<CR>', {})
map('', '<leader>fw', ':lua require("fzf-lua").live_grep()<CR>', {silent = true})
map('', '<leader>fg', ':lua require("fzf-lua").git_files()<CR>', {silent = true})
map('', '<leader>fh', ':lua require("fzf-lua").oldfiles()<CR>', {silent = true})
map('', '<leader>fc', ':lua require("fzf-lua").files({ cwd = "~/.config"})<CR>', {})
map('', '<leader>fn', ':lua require("fzf-lua").files({ cwd = "~/.config/nvim"})<CR>', {})

-- Opening tools
map('', '<leader>oe', ':NvimTreeToggle<CR>',     { silent = true })
map('', '<leader>ot', ':TerminalHori<CR>',     { silent = true })

map('n', ';', ':', {})
map('n', '!', ':!', {})

-- Change current working dir (:pwd) to curent file's folder
map('n', '<leader>%', ':cd %:h | pwd<CR>',   { noremap = true, silent = true })
map('n', '<leader>*', ':%s/<C-r><C-w>//g<left><left>',   { noremap = true })
-- map('i', '<CR>}', '}<up>',   { noremap = true, nowait = true })

-- Open terminal
map('n', '<leader>tt', ':Terminal<CR>',   { noremap = true, silent = true })
map('n', '<leader>tv', ':TerminalVert<CR>',   { noremap = true, silent = true })
map('n', '<leader>th', ':TerminalHori<CR>',   { noremap = true, silent = true })

map('n', '<Tab>', ':bnext<CR>',   { silent = true })
map('n', '<S-Tab>', ':bprev<CR>',   { silent = true })

-- Split navigation
map('n', '<S-h>', '<C-w>h', {})
map('n', '<S-j>', '<C-w>j', {})
map('n', '<S-k>', '<C-w>k', {})
map('n', '<S-l>', '<C-w>l', {})

-- Split resizing
map('n', '<C-h>', ':vertical resize +2<CR>', { silent = true })
map('n', '<C-j>', ':resize -2<CR>', { silent = true })
map('n', '<C-k>', ':resize +2<CR>', { silent = true })
map('n', '<C-l>', ':vertical resize -2<CR>', { silent = true })

-- Remove trailing whitespaces
vim.cmd([[autocmd BufWritePre * %s/\s\+$//e]])
vim.cmd([[autocmd BufWritePre * %s/\n\+\%$//e]])
vim.cmd([[autocmd BufWinEnter,WinEnter term://* startinsert]])
