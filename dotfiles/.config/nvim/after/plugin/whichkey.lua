local c = require("res.utils.colors")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "WhichKey", { fg = c.prim.main, bg = c.bg.sec })
set_hl(0, "WhichKeyBorder", { fg = c.fg.hi, bg = c.fg.hi })
set_hl(0, "WhichKeyDesc", { fg = c.prim.deep, bg = c.fg.sec })
set_hl(0, "WhichKeyGroup", { fg = c.violet.main, bg = c.fg.sec })
set_hl(0, "WhichKeyNormal", { fg = c.violet.main, bg = c.fg.sec })
set_hl(0, "WhichKeySeparator", { fg = c.grey.light, bg = c.fg.sec })
set_hl(0, "WhichKeyTitle", { fg = c.fg.acc, bg = c.fg.sec })
set_hl(0, "WhichKeyValue", { fg = c.blue.main, bg = c.fg.sec })
set_hl(0, "WhichKeyIcon", { fg = c.blue.main, bg = c.fg.sec })
