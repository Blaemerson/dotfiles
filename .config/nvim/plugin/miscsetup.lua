require('bufferline').setup()
require"surround".setup{}
require('colorizer').setup()
require('nvim-autopairs').setup()

vim.g.nvim_tree_auto_close = 1

require("nvim-autopairs.completion.compe").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true -- it will auto insert `(` after select function or method item
})
