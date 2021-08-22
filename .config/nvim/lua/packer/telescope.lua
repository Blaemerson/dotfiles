local sorters = require 'telescope.sorters'
local actions = require 'telescope.actions'
local previewers = require 'telescope.previewers'

require('telescope').setup{
 defaults = {
  prompt_prefix = ' ❯ ',
  mappings = {
    i = {
      ['<ESC>'] = actions.close,
      ['<C-j>'] = actions.move_selection_next,
      ['<C-k>'] = actions.move_selection_previous,
    },
    n = { ['<ESC>'] = actions.close },
  },
  file_ignore_patterns = {
    '%.zip',
    '%.o',
    '%.jpg',
    '%.jpeg',
    '%.bmp',
    '%.xopp',
    '%.xcf',
    '%.png',
    '%.gif',
    '%.svg',
    '%.otf',
    '%.ttf',
    '%.wav',
    '%.mp3',
    '%.flac',
    '%.webp',
    '%.webm',
    '%.mp4',
    '%.pdf',
  },
  file_sorter = sorters.get_fzy_sorter,
  generic_sorter = sorters.get_fzy_sorter,
  file_previewer = previewers.vim_buffer_cat.new,
  grep_previewer = previewers.vim_buffer_vimgrep.new,
  qflist_previewer = previewers.vim_buffer_qflist.new,
  layout_strategy = 'flex',
  winblend = 7,
  set_env = { COLORTERM = 'truecolor' },
  color_devicons = true,
  }
}

-- M.find_files = function()
--   telescope_builtin.find_files {
--     find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' },
--     previewer = false
--   }
-- end

-- M.find_config_files = function()
--   local config_dir = vim.env.HOME .. '/.config/nvim'
--   telescope_builtin.find_files {
--     find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden', config_dir },
--     previewer = false
--   }
-- end

-- M.live_grep = function()
--   telescope_builtin.live_grep {}
-- end

-- M.file_browser = function()
--   telescope_builtin.file_browser {}
-- end

-- M.buffers = function()
--   telescope_builtin.buffers {
--     previewer = false
--   }
-- end

-- return M
