local c = require("res.utils.colors")
local hl = vim.api.nvim_set_hl

hl(0, "WhichKey", { fg = c.prim.main, bg = c.bg.slate })
hl(0, "WhichKeyNormal", { fg = c.prim.main, bg = c.bg.slate })
hl(0, "WhichKeyBorder", { fg = c.fg.hi, bg = c.fg.hi })
hl(0, "WhichKeyDesc", { fg = c.fg.main, bg = c.bg.slate })
hl(0, "WhichKeyGroup", { fg = c.acc.violet, bg = c.bg.slate })
hl(0, "WhichKeyNormal", { fg = c.acc.violet, bg = c.bg.slate })
hl(0, "WhichKeySeparator", { fg = c.bg.slate, bg = c.bg.slate })
hl(0, "WhichKeyTitle", { fg = c.fg.acc, bg = c.bg.slate })
hl(0, "WhichKeyValue", { fg = c.acc.blue, bg = c.bg.slate })
hl(0, "WhichKeyIcon", { fg = c.acc.blue, bg = c.bg.slate })
