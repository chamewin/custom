local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["e"] = { "$", "end of line"},
  },
}

-- more keybinds!

return M
