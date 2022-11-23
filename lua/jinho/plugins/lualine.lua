local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local onedark = require("lualine.themes.onedark")

-- new colors for theme
-- local new_colors = {
--   blue = "#65D1FF",
--   green = "#3EFFDC",
--   violet = "#FF61EF",
--   yellow = "#FFDA7B",
--   black = "#000000",
-- }
--
-- -- change nightlfy theme colors
-- onedark.normal.a.bg = new_colors.blue
-- onedark.insert.a.bg = new_colors.green
-- onedark.visual.a.bg = new_colors.violet
-- onedark.command = {
--   a = {
--     gui = "bold",
--     bg = new_colors.yellow,
--     fg = new_colors.black, -- black
--   },
-- }
--
lualine.setup({
	options = {
		theme = onedark,
	},
})
