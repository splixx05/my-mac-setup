local M = {}

local c = {
	black = "#000000",
	navy_dark = "#000010",
	navy = "#001020",

	depth1 = "#001010",
	depth2 = "#001020",
	depth3 = "#001030",

	mid1 = "#002040",
	mid2 = "#102050",
	mid3 = "#103060",

	accent1 = "#203050",
	accent2 = "#102050",
	accent3 = "#103070",

	ice = "#E0F0F0",
	white = "#F0F0F0",

	amber = "#A07840",
	orange_amber = "#C07A40",
	coral = "#F0D0D0",
}

function M.setup()
	vim.api.nvim_set_hl(0, "Normal", { fg = c.ice, bg = c.black })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = c.depth1 })
	vim.api.nvim_set_hl(0, "Visual", { bg = c.mid1 })

	vim.api.nvim_set_hl(0, "Comment", { fg = c.accent1, italic = true })
	vim.api.nvim_set_hl(0, "String", { fg = c.orange_amber })
	vim.api.nvim_set_hl(0, "Keyword", { fg = c.coral, bold = true })
	vim.api.nvim_set_hl(0, "Function", { fg = c.mid3 })
	vim.api.nvim_set_hl(0, "Identifier", { fg = c.ice })
	vim.api.nvim_set_hl(0, "Constant", { fg = c.amber })
end

return M
