local hl = require("res.utils.colors")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "Normal", { fg = c.prim.main, bg = c.bg.main })
set_hl(0, "FloatBorder", { fg = c.prim.main, bg = c.bg.main })
set_hl(0, "SelectionCaret", { fg = c.greem.main, bg = c.bg.main, bold = true })
set_hl(0, "Selection", { fg = c.prim.soft, bg = c.bg.main, bold = true })
set_hl(0, "Matching", { fg = c.green.main, bg = c.bg.main, bold = true })
