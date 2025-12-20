local c = require("res.utils.colors")
local set = vim.api.nvim_set_hl

-- Basic dashboard styling
set(0, "Normal", { fg = c.fg.main, bg = c.bg.main })
set(0, "NormalFloat", { fg = c.fg.main, bg = c.bg.main })
set(0, "FloatBorder", { fg = c.prim.main, bg = c.bg.main })

-- Dashboard-specific groups (alpha.nvim)
set(0, "AlphaHeader", { fg = c.prim.main, bg = c.bg.main, bold = true })
set(0, "AlphaButtons", { fg = c.fg.acc, bg = c.bg.main })
set(0, "AlphaShortcut", { fg = c.violet.main, bg = c.bg.main })
set(0, "AlphaFooter", { fg = c.grey.light, bg = c.bg.main })

-- Selection (for menus or telescope-style prompts inside dashboard)
set(0, "SelectionCaret", { fg = c.prim.main, bg = c.bg.main, bold = true })
set(0, "Selection", { fg = c.fg.acc, bg = c.bg.main, bold = true })
set(0, "Matching", { fg = c.prim.soft, bg = c.bg.main, bold = true })
