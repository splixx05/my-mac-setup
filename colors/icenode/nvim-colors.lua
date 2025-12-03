-- CoolNight Colorscheme
local c = {
	primary = { main = "#00ECC6", deep = "#009E8C", soft = "#5FF5DF" },
	bg = { deep = "#020712", night = "#061B2B", slate = "#0F2E3F" },
	accent = { blue = "#178FFF", purple = "#7A5CFF", magenta = "#E178FF" },
	hi = { bright = "#D9FBFF", white = "#F8FFFF" },
	sem = { warn = "#FFDF6E", err = "#FF6E8A" },
}

vim.cmd("hi clear")
vim.o.termguicolors = true

local function hi(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Core UI
hi("Normal", { fg = c.hi.white, bg = c.bg.deep })
hi("CursorLine", { bg = c.bg.slate })
hi("CursorColumn", { bg = c.bg.slate })
hi("Visual", { bg = c.primary.deep })
hi("LineNr", { fg = "#4A6070" })
hi("CursorLineNr", { fg = c.primary.main })
hi("Bold", { bold = true })

-- Syntax
hi("Comment", { fg = c.accent.purple, italic = true })
hi("Constant", { fg = c.accent.magenta })
hi("String", { fg = c.primary.soft })
hi("Identifier", { fg = c.primary.main })
hi("Function", { fg = c.accent.blue })
hi("Statement", { fg = c.primary.main })
hi("Type", { fg = c.accent.blue })
hi("Keyword", { fg = c.accent.purple })
hi("Number", { fg = c.accent.magenta })
hi("Boolean", { fg = c.accent.magenta })

-- Diagnostics
hi("DiagnosticError", { fg = c.sem.err })
hi("DiagnosticWarn", { fg = c.sem.warn })
hi("DiagnosticInfo", { fg = c.accent.blue })
hi("DiagnosticHint", { fg = c.accent.purple })

-- Treesitter
hi("@variable", { fg = c.hi.white })
hi("@constant", { fg = c.accent.magenta })
hi("@function", { fg = c.accent.blue })
hi("@keyword", { fg = c.accent.purple })
hi("@string", { fg = c.primary.soft })

-- LSP
hi("LspReferenceText", { bg = c.bg.slate })
hi("LspReferenceRead", { bg = c.bg.slate })
hi("LspReferenceWrite", { bg = c.bg.slate })

-- Git
hi("DiffAdd", { bg = "#03331F" })
hi("DiffDelete", { bg = "#3A0F1A" })
hi("DiffChange", { bg = "#0A263F" })

return c
