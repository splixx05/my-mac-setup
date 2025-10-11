local hl = require("res.utils.highlight")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "WhichKey", { fg = hl.Accent, bg = hl.Visual })
set_hl(0, "WhichKeyBorder", { fg = hl.Accent, bg = hl.Accent })
set_hl(0, "WhichKeyDesc", { fg = hl.Keyword, bg = hl.Visual })
set_hl(0, "WhichKeyGroup", { fg = hl.Tag, bg = hl.Visual })
set_hl(0, "WhichKeyNormal", { fg = hl.Tag, bg = hl.Visual })
set_hl(0, "WhichKeySeparator", { fg = hl.Comment, bg = hl.Visual })
set_hl(0, "WhichKeyTitle", { fg = hl.Accent, bg = hl.Visual })
set_hl(0, "WhichKeyValue", { fg = hl.Identifier, bg = hl.Visual })
set_hl(0, "WhichKeyIcon", { fg = hl.Identifier, bg = hl.Visual })
