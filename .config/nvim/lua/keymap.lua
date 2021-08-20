vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', '<leader><leader>', ':<C-P><CR>', opts)
-- Writing / quitting
map('n', '<leader>qq', '<cmd>q!<CR>', opts)
map('n', '<leader>qa', '<cmd>qa<CR>', opts)
map('n', '<leader>qw', '<cmd>wq<CR><CR>', opts)
map('n', '<leader>wq', '<cmd>wq<CR>', opts)
map('n', '<leader>ww', '<cmd>w<CR>', opts)
map('n', '<leader>wa', '<cmd>wa<CR>', opts)

map('n', '<leader>bd', '<cmd>bd<CR>', opts)
map('n', '<leader>bn', '<cmd>enew<CR>', opts)

-- Edit config files
map('n', '<leader>cc', '<leader>ck<leader>co<leader>cu<leader>ct<leader>ci',   opts)
map('n', '<leader>ci', '<cmd>edit $MYVIMRC<CR>',   opts)
map('n', '<leader>ck', '<cmd>edit ~/.config/nvim/lua/keymap.lua<CR>', opts)
map('n', '<leader>cu', '<cmd>edit ~/.config/nvim/lua/util.lua<CR>', opts)
map('n', '<leader>ct', '<cmd>edit ~/.config/nvim/lua/theme.lua<CR>', opts)
map('n', '<leader>co', '<cmd>edit ~/.config/nvim/lua/options.lua<CR>', opts)
map('n', '<leader>c.', '<cmd>luafile %<CR>',     opts)

map('n', '<leader>pdf', ':PDF<CR><CR>', opts)

-- setting options
map('n', '<leader>sn', ':set rnu! number!<cr>',   opts)
map('n', '<leader>sw', ':set wrap!<cr>',   opts)

map('n', '<leader>t', ':TerminalHori<CR>',     opts)
map('n', '<leader>e', ':NvimTreeToggle<CR>',     opts)
map('n', '<leader>S', ':Startify<CR>',     opts)

-- Exit terminal with Escape
map('t', '<ESC>', '<C-\\><C-n>:quit<CR>',     opts)

-- Shortcuts for the little things
map('n', ';', ':', {noremap = true})
map('n', ':', ';', {noremap = true})
-- map('i', ';;', '<esc>', {})
map('n', '!', ':!', {noremap = true})
map('n', 'H', '0', {})
map('n', 'L', '$', {})
map('n', 'J', '<C-d>zz', {})
map('n', 'K', '<C-u>zz', {})
map('n', 'n', 'nzz', {})
map('n', 'N', 'Nzz', {})
map('n', 'Y', 'y$', {})
map('n', '>', '>>', {})
map('n', '<', '<<', {})

map('n', '<leader>.', ':cd %:h | pwd<CR>',   {noremap = true})

-- Find & replace all instances of token under cursor
map('n', '<leader>*', ':%s/<C-r><C-w>//g<left><left>',   opts)
map('n', '<leader>ff', "<cmd>Telescope find_files<cr>", opts)
map('n', '<leader>fc', "<cmd>Telescope find_config_files<cr>", opts)
-- map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files({hidden = true})<CR>', opts)
map('n', '<leader>fw', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<leader>fh', '<cmd>Telescope oldfiles<CR>', opts)

-- Buffer navigation
map('n', '<tab>', ':bnext<CR>', opts)
map('n', '<s-tab>', ':bprev<CR>', opts)

-- Move lines up and down
map('n', '<A-k>', ':m .-2<CR>', opts)
map('n', '<A-j>', ':m .+1<CR>', opts)

map('i', '<A-j>', '<ESC>:m .+1<CR>==gi', opts)
map('i', '<A-k>', '<ESC>:m .-2<CR>==gi', opts)

map('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)
map('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)

-- Better indenting
map('v', '<', "<gv", opts)
map('v', '>', ">gv", opts)

-- Split navigation
map('n', '<C-h>', '<C-w>h', {})
map('n', '<C-j>', '<C-w>j', {})
map('n', '<C-k>', '<C-w>k', {})
map('n', '<C-l>', '<C-w>l', {})

-- Split resizing
map('n', '<LEFT>', ':vertical resize +2<CR>', opts)
map('n', '<DOWN>', ':resize -2<CR>', opts)
map('n', '<UP>', ':resize +2<CR>', opts)
map('n', '<RIGHT>', ':vertical resize -2<CR>', opts)

-- Plugin remaps

-- LSPConfig/ LSPInstal

-- map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
-- map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- map("n", "<leader>lh", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
-- map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
-- buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
-- map("n", "<space>Wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
-- map("n", "<space>Wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
-- map("n", "<space>Wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
-- map("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
-- buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
-- map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
-- map("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
-- map("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
-- map("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
-- map("n", "<space>ll", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
