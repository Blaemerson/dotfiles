vim.g.nvim_tree_side = 'left'

-- Set width.
vim.g.nvim_tree_width = 30

-- Set files that should be ignored.
vim.g.nvim_tree_ignore = { '.git', '.gitignore', '.gitmodules', '.github', '.env', '.envrc', '.editorconfig',
                            '.busted', '.luacheckrc', '*.pdf' }

-- Ignore files in '.gitignore'.
vim.g.nvim_tree_gitignore = 1

-- Do not open nvim-tree when trying 'vim $DIR' or 'vim'.
vim.g.nvim_tree_auto_open = 0

-- Do not close nvim-tree when it is the last window open.
vim.g.nvim_tree_auto_close = 0

-- Set file types that should not cause nvim-tree to automatically open.
vim.g.nvim_tree_auto_ignore_ft = { 'startify', 'dashboard' }

-- Close nvim-tree when a file is opened.
vim.g.nvim_tree_quit_on_open = 1

-- Update the cursor when entering a buffer.
vim.g.nvim_tree_follow = 1

-- Do not show ident markers when folders are open.
vim.g.nvim_tree_indent_markers = 0

-- Show hidden files and directories.
vim.g.nvim_tree_hide_dotfiles = 0

-- Enable file highlighting for git attributes.
vim.g.nvim_tree_git_hl = 0

-- Enable folder and file icon highlighting for opened files and directories.
vim.g.nvim_tree_highlight_opened_files = 1

-- Set the root folder modifier.
-- vim.g.nvim_tree_root_folder_modifier = ':~'

-- Do not open nvim-tree when entering a new tab.
-- vim.g.nvim_tree_tab_open = 1

-- Resize nvim-tree when opening a file.
-- vim.g.nvim_tree_auto_resize = 1

-- Disable netrw.
-- vim.g.nvim_tree_disable_netrw = 1

-- Use nvim-tree instead of netrw when opening a directory.
-- vim.g.nvim_tree_hijack_netrw = 1

-- Append a trailing '/' for folder names.
-- vim.g.nvim_tree_add_trailing = 1

-- Compact folders that only contain a single folder into one node in the file tree.
-- vim.g.nvim_tree_group_empty = 1

-- Show LSP diagnostics in signcolumn.
-- vim.g.nvim_tree_lsp_diagnostics = 1

-- Enable window picker.
-- vim.g.nvim_tree_disable_window_picker = 0

-- when moving the cursor in the tree position the cursor at the start of the file on the current line.
-- vim.g.nvim_tree_hijack_cursor = 1

-- Add one space between icons and file names.
-- vim.g.nvim_tree_icon_padding = ' '

-- Separator to use between symbolic links source and target.
-- vim.g.nvim_tree_symlink_arrow = ' ➛ '

-- Update nvim-tree's current working directory when changing nvim's directory.
-- vim.g.nvim_tree_update_cwd = 1

-- Change nvim-tree's current working direcgtory to that of the new buffer's.
-- vim.g.nvim_tree_respect_buf_cwd = 1

-- List of filenames that gets highlighted with NvimTreeSpecialFile
-- plugin.nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1, 'setup.py': 1, }

-- Icon types to show.
