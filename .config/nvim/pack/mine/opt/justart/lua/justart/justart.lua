local M = {}

local header = {
    [[       ___  __   __  _______  _______  _______  ______    _______]],
    [[    |   ||  | |  ||       ||       ||   _   ||    _ |  |       | ]],
    [[    |   ||  | |  ||  _____||_     _||  |_|  ||   | ||  |_     _| ]],
    [[    |   ||  |_|  || |_____   |   |  |       ||   |_||_   |   |   ]],
    [[ ___|   ||       ||_____  |  |   |  |       ||    __  |  |   |   ]],
    [[|       ||       | _____| |  |   |  |   _   ||   |  | |  |   |   ]],
    [[|_______||_______||_______|  |___|  |__| |__||___|  |_|  |___|   ]]
}

vim.cmd [[command! -nargs=* Justart lua require("justart").start_screen()]]

function M.setup()
  vim.api.nvim_exec([[
      au BufEnter,BufWinEnter,WinEnter * if bufname('%') == "" | Justart | endif
      augroup END
  ]], false)
end

function M.start_screen()
  local file = io.open("%", "w")
  vim.g.append('$', header)
end

-- vim.cmd([[autocmd BufEnter * if bufname('%') == "" | Justart | endif]])

return M
