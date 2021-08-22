-- local snap = require'snap'
-- snap.maps {
--   -- {"<Leader>ff", file {producer = "ripgrep.file", prompt = "Files"}},
--   {"<Leader>ff", file {try = {"ripgrep.file", "vim.oldfile"}, prompt = "Files"}},
--   {"<Leader>fb", file {producer = "vim.buffer"}},
--   {"<Leader>fo", file {producer = "vim.oldfile"}},
--   {"<Leader>fw", snap.config.vimgrep {}}
-- }

local snap = require'snap'
local file = snap.config.file:with {reverse = true, suffix = ">>", consumer = "fzf"}

-- Basic buffer producer
local buffers = file {producer = "vim.buffer"}

-- A customized prompt
local files = file {try = {"git.file", "ripgrep.file"}, prompt = "Files"}

-- Custom layout function
file {producer = "ripgrep.file", layout = myCustomLayoutFunction}
snap.maps {
  {"<Leader>ff", files},
  {"<Leader>fh", history},
  -- {"<Leader>fb", file {producer = "vim.buffer"}},
  -- {"<Leader>fo", file {producer = "vim.oldfile"}},
  -- {"<Leader>fw", snap.config.vimgrep },
}
