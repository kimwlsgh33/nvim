local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local onedark = require("lualine.themes.onedark")

-- new colors for theme
-- local new_colors = {
-- 	blue = "#65D1FF",
-- 	green = "#3EFFDC",
-- 	violet = "#FF61EF",
-- 	yellow = "#FFDA7B",
-- 	black = "#000000",
-- }

local colors = {
	darkgray = "#16161d",
	gray = "#727169",
	innerbg = nil,
	outerbg = "#16161D",
	normal = "#7e9cd8",
	insert = "#98bb6c",
	visual = "#ffa066",
	replace = "#e46876",
	command = "#e6c384",
}

-- change nightlfy theme colors
onedark.inactive = {
	a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
	b = { fg = colors.gray, bg = colors.outerbg },
	c = { fg = colors.gray, bg = colors.innerbg },
}
onedark.visual = {
	a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
	b = { fg = colors.gray, bg = colors.outerbg },
	c = { fg = colors.gray, bg = colors.innerbg },
}
onedark.replace = {
	a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
	b = { fg = colors.gray, bg = colors.outerbg },
	c = { fg = colors.gray, bg = colors.innerbg },
}
onedark.normal = {
	a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
	b = { fg = colors.gray, bg = colors.outerbg },
	c = { fg = colors.gray, bg = colors.innerbg },
}
onedark.insert = {
	a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
	b = { fg = colors.gray, bg = colors.outerbg },
	c = { fg = colors.gray, bg = colors.innerbg },
}
onedark.command = {
	a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
	b = { fg = colors.gray, bg = colors.outerbg },
	c = { fg = colors.gray, bg = colors.innerbg },
}
-- onedark.normal.a.bg = new_colors.blue
-- onedark.insert.a.bg = new_colors.green
-- onedark.visual.a.bg = new_colors.violet
-- onedark.command = {
-- 	a = {
-- 		gui = "bold",
-- 		bg = new_colors.yellow,
-- 		fg = new_colors.black, -- black
-- 	},
-- }

lualine.setup({
	options = {
		theme = onedark,
	},
})
