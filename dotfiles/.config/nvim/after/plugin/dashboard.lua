local c = require("res.utils.colors")
local hl = vim.api.nvim_set_hl

-- Basic dashboard styling
hl(0, "Normal", { fg = c.fg.main, bg = c.bg.main })
hl(0, "NormalFloat", { fg = c.fg.main, bg = c.bg.main })
hl(0, "FloatBorder", { fg = c.prim.main, bg = c.bg.main })

-- Dashboard-specific groups (alpha.nvim)
hl(0, "AlphaHeader", { fg = c.prim.main, bg = c.bg.main, bold = true })
hl(0, "AlphaButtons", { fg = c.fg.acc, bg = c.bg.main })
hl(0, "AlphaShortcut", { fg = c.acc.violet, bg = c.bg.main })
hl(0, "AlphaFooter", { fg = c.tone.grey.light, bg = c.bg.main })

-- Selection (for menus or telescope-style prompts inside dashboard)
hl(0, "SelectionCaret", { fg = c.prim.main, bg = c.bg.main, bold = true })
hl(0, "Selection", { fg = c.fg.acc, bg = c.bg.main, bold = true })
hl(0, "Matching", { fg = c.prim.soft, bg = c.bg.main, bold = true })
