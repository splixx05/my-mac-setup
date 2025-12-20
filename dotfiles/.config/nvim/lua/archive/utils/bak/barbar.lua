local c = require("res.utils.colors")
local set = vim.api.nvim_set_hl

-- Current buffer
set(0, "BufferCurrent", { fg = c.fg.main, bg = c.bg.main, bold = true })
set(0, "BufferCurrentMod", { fg = c.magenta.main, bg = c.bg.main })
set(0, "BufferCurrentSign", { fg = c.cyan.main, bg = c.bg.main })
set(0, "BufferCurrentTarget", { fg = c.red.main, bg = c.bg.main })

-- Visible buffer
set(0, "BufferVisible", { fg = c.grey.deep, bg = c.bg.main })
set(0, "BufferVisibleMod", { fg = c.magenta.main, bg = c.bg.main })
set(0, "BufferVisibleSign", { fg = c.prim.main, bg = c.bg.main })
set(0, "BufferVisibleTarget", { fg = c.red.main, bg = c.bg.main })

-- Inactive buffer
set(0, "BufferInactive", { fg = c.grey.deep, bg = c.bg.main })
set(0, "BufferInactiveMod", { fg = c.magenta.main, bg = c.bg.main })
set(0, "BufferInactiveSign", { fg = c.grey.deep, bg = c.bg.main })
set(0, "BufferInactiveTarget", { fg = c.red.main, bg = c.bg.main })

-- Tabline
set(0, "BufferTabpageFill", { fg = c.grey.deep, bg = c.bg.main })
set(0, "BufferTabpages", { fg = c.fg.main, bg = c.bg.main })

-- Icons
set(0, "BufferCurrentIcon", { fg = c.fg.hi, bg = c.bg.main })
set(0, "BufferVisibleIcon", { fg = c.fg.acc, bg = c.bg.main })
set(0, "BufferInactiveIcon", { fg = c.grey.light, bg = c.bg.main })

-- Index numbers
set(0, "BufferCurrentIndex", { fg = c.prim.main, bg = c.bg.main })
set(0, "BufferVisibleIndex", { fg = c.grey.light, bg = c.bg.main })
set(0, "BufferInactiveIndex", { fg = c.grey.light, bg = c.bg.main })

-- Errors / Warnings / Infos
set(0, "BufferCurrentERROR", { fg = c.red.main, bg = c.bg.main })
set(0, "BufferCurrentWARN", { fg = c.orange.main, bg = c.bg.main })
set(0, "BufferCurrentINFO", { fg = c.green.main, bg = c.bg.main })
set(0, "BufferCurrentHINT", { fg = c.cyan.main, bg = c.bg.main })

set(0, "BufferVisibleERROR", { fg = c.red.main, bg = c.bg.main })
set(0, "BufferVisibleWARN", { fg = c.orange.main, bg = c.bg.main })
set(0, "BufferVisibleINFO", { fg = c.green.main, bg = c.bg.main })
set(0, "BufferVisibleHINT", { fg = c.cyan.main, bg = c.bg.main })

set(0, "BufferInactiveERROR", { fg = c.red.main, bg = c.bg.main })
set(0, "BufferInactiveWARN", { fg = c.orange.main, bg = c.bg.main })
set(0, "BufferInactiveINFO", { fg = c.green.main, bg = c.bg.main })
set(0, "BufferInactiveHINT", { fg = c.cyan.main, bg = c.bg.main })
