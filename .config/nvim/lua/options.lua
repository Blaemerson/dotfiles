local disabled_built_ins = {
  'netrw',
  'netrwPlugin',
  'netrwSettings',
  'netrwFileHandlers',
  'gzip',
  'zip',
  'zipPlugin',
  'tar',
  'tarPlugin',
  'getscript',
  'getscriptPlugin',
  'vimball',
  'vimballPlugin',
  '2html_plugin',
  'logipat',
  'rrhelper',
  'spellfile_plugin',
  'matchit',
}
for _, plugin in pairs(disabled_built_ins) do
  vim.g['loaded_' .. plugin] = 1
end

local opt = vim.opt

-- local g = vim.g

opt.shadafile = "NONE"

opt.termguicolors = true

opt.ruler = false
opt.hidden = true
opt.ignorecase = false
opt.splitbelow = true
opt.splitright = true
opt.cul = true
opt.mouse = "a"
opt.signcolumn = "yes"
opt.hlsearch = false
opt.cmdheight = 1
opt.updatetime = 250 -- update interval for gitsigns
opt.timeoutlen = 400
opt.clipboard = "unnamedplus" -- use the system-wide clipboard
opt.scrolloff = 9
opt.lazyredraw = true
opt.linebreak = true
opt.wrap = false
opt.textwidth = 80
opt.wildmenu = true
opt.wildmode = 'longest:list:full'
opt.swapfile = false
opt.backup = false
-- opt.undodir = '~/.local/share/nvim/undo'
opt.undofile = true

opt.relativenumber = true
opt.number = true
opt.autochdir = false
opt.laststatus = 1

opt.numberwidth = 2

opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = false
