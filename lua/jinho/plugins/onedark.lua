local status, onedark = pcall(require, "onedark")
if not status then
	return
end

onedark.setup({
	style = "warmer",
	transparent = true,
	-- term_colors = true, -- Change terminal color, selected Thene
	code_style = {
		comments = "italic",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},
	lualine = {
		transparent = true,
	},
	-- colors = {
	-- 	bright_orange = "#ff8800", -- define a new color
	-- 	green = "#00ffaa", -- redefine an existing color
	-- },
	-- highlights = {
	-- 	["@keyword"] = { fg = "$green" },
	-- 	["@string"] = { fg = "$bright_orange", bg = "#00ff00", fmt = "bold" },
	-- 	["@function"] = { fg = "#0000ff", sp = "$cyan", fmt = "underline,italic" },
	-- 	["@function.builtin"] = { fg = "#0059ff" },
	-- },
	diagnostics = {
		undercurl = true,
	},
})

onedark.load()
