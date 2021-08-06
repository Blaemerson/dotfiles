vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
-- Writing / quitting
map('', '<leader>qq', ':q!<CR>', {silent = true})
map('', '<leader>qa', ':qa<CR>', {silent = true})
map('', '<leader>qw', ':wq<CR><CR>', {silent = true})
map('', '<leader>wq', ':wq<CR>', {silent = true})
map('', '<leader>ww', ':w<CR>', {silent = true})
map('', '<leader>wa', ':wa<CR>', {silent = true})

map('', '<leader>bd', ':bd<CR>', {silent = true})
map('', '<leader>bn', ':enew<CR>', {silent = true})

-- Edit config files
map('', '<leader>ci', ':NvimEditInit<CR>',   { silent = true })
map('', '<leader>ck', ':NvimEditKeymap<CR>', { silent = true })
map('', '<leader>cu', ':NvimEditUtil<CR>', { silent = true })
map('', '<leader>ct', ':NvimEditTheme<CR>', { silent = true })
map('', '<leader>co', ':NvimEditOptions<CR>', { silent = true })
map('', '<leader>c.', ':NvimSource<CR>',     { silent = true })

-- Setting options
map('', '<leader>sn', ':set rnu! number!<CR>',   { silent = true })
-- map('', '<leader>sN', ':set nonumber norelativenumber<CR>',   { silent = true })
map('', '<leader>sw', ':set wrap!<CR>',   { silent = true })

-- Finding files
map('', '<leader>ff', ':packadd fzf-lua | :packadd nvim-fzf | lua require("fzf-lua").files()<CR>', {silent = true})
map('', '<leader>fw', ':packadd fzf-lua | :packadd nvim-fzf | lua require("fzf-lua").live_grep()<CR>', {silent = true})
map('', '<leader>fg', ':packadd fzf-lua | :packadd nvim-fzf | lua require("fzf-lua").git_files()<CR>', {silent = true})
map('', '<leader>fh', ':packadd fzf-lua | :packadd nvim-fzf | lua require("fzf-lua").oldfiles()<CR>', {silent = true})
map('', '<leader>fc', ':packadd fzf-lua | :packadd nvim-fzf | lua require("fzf-lua").files({ cwd = "~/.config"})<CR>', {silent = true})
map('', '<leader>fn', ':packadd fzf-lua | :packadd nvim-fzf | lua require("fzf-lua").files({ cwd = "~/.config/nvim"})<CR>', {silent = true})

-- Opening tools
map('', '<leader>oe', ':packadd nvim-tree.lua | NvimTreeToggle<CR>',     { silent = true })
map('', '<leader>ot', ':Terminal<CR>',     { silent = true })
map('n', 'f', ':packadd nvim-tree.lua | NvimTreeToggle<CR>',     { silent = true })
map('n', 't', ':TerminalHori<CR>',     { silent = true })
map('n', '<S-t>', ':TerminalVert<CR>',     { silent = true })

-- Exit terminal with Escape
map('t', '<ESC>', 'exit<CR>',     { silent = true })

-- Shortcuts for the little things
map('n', ';', ':', {})
map('n', '!!', ':!', {})
map('n', 'H', '0', {})
map('n', 'L', '$', {})
map('n', 'J', '<C-d>', {})
map('n', 'K', '<C-u>', {})

-- Change current working dir (:pwd) to curent file's folder
map('n', '<leader>%', ':cd %:h | pwd<CR>',   { noremap = true, silent = true })
map('n', '<leader>*', ':%s/<C-r><C-w>//g<left><left>',   { noremap = true })

-- Open terminal
map('n', '<leader>tt', ':Terminal<CR>',   { noremap = true, silent = true })
map('n', '<leader>tv', ':TerminalVert<CR>',   { noremap = true, silent = true })
map('n', '<leader>th', ':TerminalHori<CR>',   { noremap = true, silent = true })

-- Buffer navigation
map('n', '<Tab>', ':bnext | packadd nvim-bufferline.lua | lua require("bufferline").setup()<CR>',   { silent = true })
map('n', '<S-Tab>', ':bprev<CR>',   { silent = true })

-- Split navigation
map('n', '<C-h>', '<C-w>h', {})
map('n', '<C-j>', '<C-w>j', {})
map('n', '<C-k>', '<C-w>k', {})
map('n', '<C-l>', '<C-w>l', {})

-- Split resizing
map('n', '<LEFT>', ':vertical resize +2<CR>', { silent = true })
map('n', '<DOWN>', ':resize -2<CR>', { silent = true })
map('n', '<UP>', ':resize +2<CR>', { silent = true })
map('n', '<RIGHT>', ':vertical resize -2<CR>', { silent = true })

map('n', '<leader>lc', ':packadd nvim-compe | :packadd vim-vsnip | lua require "plugin.compe"<CR>', { silent = false })
map('n', '<leader>ls', ':packadd surround.nvim | lua require"surround".setup{}<CR>', { silent = false })
