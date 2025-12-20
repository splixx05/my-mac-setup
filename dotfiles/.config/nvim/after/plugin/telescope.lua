local c = require("res.utils.colors")
local hl = vim.api.nvim_set_hl

hl(0, "TelescopeBorder", { fg = c.fg.main, bg = "NONE", bold = true })
hl(0, "TelescopeSelectionCaret", { fg = c.prim.main, bg = "NONE", bold = true })
hl(0, "TelescopeSelection", { fg = c.prim.main, bg = "NONE", bold = true })
hl(0, "TelescopeMatching", { fg = c.acc.green, bg = "NONE", bold = true })
