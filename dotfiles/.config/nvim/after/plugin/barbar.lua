local hl = require("res.utils.colorscheme")
local set_hl = vim.api.nvim_set_hl

set_hl(0, "BufferCurrent", { fg = hl.Accent, bg = hl.Background, bold = true })
set_hl(0, "BufferCurrentMod", { fg = hl.Tag, bg = hl.Background })
set_hl(0, "BufferVisible", { fg = hl.Foreground, bg = hl.Background })
set_hl(0, "BufferVisibleMod", { fg = hl.Tag, bg = hl.Background })
set_hl(0, "BufferInactive", { fg = hl.Ignore, bg = hl.Background })
set_hl(0, "BufferInactiveMod", { fg = hl.Tag, bg = hl.Background })
set_hl(0, "BufferTabpageFill", { fg = hl.Accent, bg = hl.Background })
set_hl(0, "BufferScrollArrow", { fg = hl.Accent, bg = hl.Background })

set_hl(0, "BufferCurrentIcon", { fg = hl.Accent, bg = "NONE", bold = true })
set_hl(0, "BufferVisibleIcon", { fg = hl.Foreground, bg = hl.Background })
set_hl(0, "BufferInactiveIcon", { fg = hl.Ignore, bg = hl.Background })

set_hl(0, "BufferCurrentHINT", { fg = hl.Accent, bg = hl.Background, bold = true })
set_hl(0, "BufferVisibleHINT", { fg = hl.Foreground, bg = hl.Background })
set_hl(0, "BufferInactiveHINT", { fg = hl.Ignore, bg = hl.Background })

set_hl(0, "BufferCurrentSign", { fg = hl.Background, bg = hl.Background })
set_hl(0, "BufferVisibleSign", { fg = hl.Background, bg = hl.Background })
set_hl(0, "BufferInactiveSign", { fg = hl.Background, bg = hl.Background })

set_hl(0, "BufferCurrentSignRight", { fg = hl.Background, bg = hl.Background })
set_hl(0, "BufferVisibleSignRight", { fg = hl.Background, bg = hl.Background })
set_hl(0, "BufferInactiveSignRight", { fg = hl.Background, bg = hl.Background })

set_hl(0, "BufferCurrentIndex", { fg = hl.Accent, bg = hl.Background })
set_hl(0, "BufferVisibleIndex", { fg = hl.Foreground, bg = hl.Background })
set_hl(0, "BufferInactiveIndex", { fg = hl.Ignore, bg = hl.Background })

set_hl(0, "BufferCurrentERROR", { fg = hl.Error, bg = hl.Background })
set_hl(0, "BufferVisibleERROR", { fg = hl.Foreground, bg = hl.Background })
set_hl(0, "BufferInactiveERROR", { fg = hl.Error, bg = hl.Background })

set_hl(0, "BufferCurrentWARN", { fg = hl.Warning, bg = hl.Background })
set_hl(0, "BufferVisibleWARN", { fg = hl.Foreground, bg = hl.Background })
set_hl(0, "BufferInactiveWARN", { fg = hl.Foreground, bg = hl.Background })

set_hl(0, "BufferCurrentINFO", { fg = hl.Special, bg = hl.Background })
set_hl(0, "BufferVisibleINFO", { fg = hl.Foreground, bg = hl.Background })
set_hl(0, "BufferInactiveINFO", { fg = hl.Foreground, bg = hl.Background })
