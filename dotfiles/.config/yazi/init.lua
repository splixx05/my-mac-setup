-- ############# Colors - Icenode ########################################
local c = {
	prim = {
		main = "#00baff",
		deep = "#007caa",
		soft = "#46d6ff",
	},
	comp = {
		main = "#0166a9",
		dark = "#022945",
		deep = "#283457",
	},
	bg = {
		main = "#08192c",
		sec = "#081b30",
		comp = "#123054",
		deep = "#071321",
	},
	fg = {
		main = "#ABC9ED",
		acc = "#D6F4FF",
		hi = "#85DEFF",
	},
	black = "#040A11",
	grey = { deep = "#07283f", light = "#4A6070" },
	green = "#38ff9c",
	yellow = "#FFDF6E",
	orange = "#FFAA66",
	red = "#FF6E8A",
	blue = "#178FFF",
	cyan = "#00B7EB",
	white = "#F8FFFF",
	magenta = "#E178FF",
	violet = "#947CFF",
}
-- ########################################################################

require("git"):setup()

-- ########################################################################

require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
})

-- ########################################################################

require("yatline"):setup({
	section_separator = { open = "", close = "" },
	part_separator = { open = "|", close = "|" },
	inverse_separator = { open = "", close = "" },

	style_a = {
		fg = c.prim.main,
		bg_mode = {
			-- normal = "",
			select = c.violet,
			un_select = c.red,
		},
	},
	style_b = { fg = c.prim.deep },
	style_c = { fg = c.prim.deep },

	permissions_t_fg = c.prim.soft,
	permissions_r_fg = c.orange,
	permissions_w_fg = c.red,
	permissions_x_fg = c.green,
	permissions_s_fg = c.fg.hi,

	selected = { icon = "󰻭", fg = c.fg.hi },
	copied = { icon = "", fg = c.green },
	cut = { icon = "", fg = c.red },
	total = { icon = "󰮍", fg = c.orange },
	succ = { icon = "", fg = c.green },
	fail = { icon = "", fg = c.red },
	found = { icon = "󰮕", fg = c.blue },
	processed = { icon = "󰐍", fg = c.green },

	show_background = false,

	header_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "hovered_path" },
			},
			section_b = {
				-- { type = "coloreds", custom = false, name = "tab_path" },
			},
			section_c = {
				{ type = "coloreds", custom = false, name = "symlink" },
			},
		},
		right = {
			section_a = {
				{ type = "line", custom = false, name = "tabs", params = { "left" } },
			},
			section_b = {
				{ type = "coloreds", custom = false, name = "githead" },
			},
			section_c = {},
		},
	},

	status_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_mode" },
			},
			section_b = {
				-- { type = "string", custom = false, name = "hovered_size" },
			},
			section_c = {
				{ type = "coloreds", custom = false, name = "count" },
			},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "cursor_position" },
			},
			section_b = {
				-- { type = "string", custom = false, name = "cursor_percentage" },
			},
			section_c = {
				-- { type = "string", custom = false, name = "hovered_file_extension", params = { true } },
				{ type = "coloreds", custom = false, name = "permissions" },
			},
		},
	},
})

-- ########################################################################

local icenode = {
	prefix_color = c.fg.hi,
	branch_color = c.cyan,
	commit_color = c.green,
	stashes_color = c.green,
	state_color = c.red,
	staged_color = c.orange,
	unstaged_color = c.red,
	untracked_color = c.blue,
}
require("yatline-githead"):setup({
	theme = icenode,
})

-- ########################################################################

require("yatline-tab-path"):setup({
	path_fg = c.bg.deep,
	filter_fg = c.red,
	search_label = " search",
	filter_label = " filter",
	no_filter_label = "",
	flatten_label = " flatten",
	separator = "",
})

-- ########################################################################

require("yatline-symlink"):setup({
	symlink_color = c.magenta,
})

-- ########################################################################

require("yamb"):setup({
	jump_notify = true,
})

-- ########################################################################

require("restore"):setup({})

-- ########################################################################

require("mactag"):setup({
	keys = {
		i = "important",
		t = "todo",
		f = "find",
		-- o = "Orange",
		-- g = "Green",
		-- b = "Blue",
	},
	colors = {
		important = c.red,
		todo = c.orange,
		find = c.magenta,
		-- Orange = c.orange,
		-- Green = c.green,
		-- Blue = c.blue,
	},
})

-- ########################################################################

require("copy-file-contents"):setup({
	append_char = "\n",
	notification = true,
})

-- ########################################################################

require("relative-motions"):setup({
	show_numbers = "relative",
	only_motion = true,
})

-- ########################################################################
