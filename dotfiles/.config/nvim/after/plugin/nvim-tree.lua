local c = require("res.utils.colors")
local hl = vim.api.nvim_set_hl

-- Folders
hl(0, "NvimTreeRootFolder", { fg = c.prim.main, bg = "NONE", bold = true })
hl(0, "NvimTreeFolderName", { fg = c.fg.main, bg = "NONE" })
hl(0, "NvimTreeFolderIcon", { fg = c.prim.deep, bg = "NONE" })
hl(0, "NvimTreeOpenedFolderName", { fg = c.prim.main, bg = "NONE", bold = true })
hl(0, "NvimTreeEmptyFolderName", { fg = c.bg.slate, bg = "NONE" })
hl(0, "NvimTreeSymlink", { fg = c.acc.magenta, bg = "NONE" })

-- Files
hl(0, "NvimTreeFileName", { fg = c.fg.main, bg = "NONE" })
hl(0, "NvimTreeExecFile", { fg = c.spec.violet.dark, bg = "NONE" })
hl(0, "NvimTreeSpecialFile", { fg = c.acc.green, bg = "NONE" })
hl(0, "NvimTreeImageFile", { fg = c.acc.cyan, bg = "NONE" })
hl(0, "NvimTreeSymlink", { fg = c.acc.magenta, bg = "NONE" })
hl(0, "NvimTreeModifiedFile", { fg = c.acc.magenta, bg = "NONE" })
