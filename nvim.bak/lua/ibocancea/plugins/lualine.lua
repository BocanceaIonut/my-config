-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine nightfly theme
local lualine_nightfly = require("lualine.themes.nightfly")

-- get lualine nightfly theme
local lualine_nord = require("lualine.themes.nord")

-- get lualine nightfly theme
local lualine_iceberg_dark = require("lualine.themes.iceberg_dark")
local lualine_iceberg = require("lualine.themes.iceberg")
local lualine_onedark = require("lualine.themes.onedark")
local lualine_papercolor_dark = require("lualine.themes.papercolor_dark")

-- new colors for theme
local new_colors = {
	blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
	red = "FF0000",
}

-- change nightlfy theme colors
lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet
lualine_nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black, -- black
	},
}

-- change nightlfy theme colors
lualine_nord.normal.a.bg = new_colors.blue
lualine_nord.insert.a.bg = new_colors.yellow
lualine_nord.visual.a.bg = new_colors.violet
lualine_nord.replace.a.bg = new_colors.red
lualine_nord.command = {
	a = {
		gui = "bold",
		bg = new_colors.green,
		fg = new_colors.black, -- black
	},
}
-- configure lualine with modified theme
lualine.setup({
	options = {
		-- theme = lualine_nord,
		theme = lualine_nightfly,
		-- theme = lualine_papercolor_dark,
		-- theme = lualine_iceberg_dark,
		-- theme = lualine_iceberg,
		-- theme = lualine_onedark,
	},
})
