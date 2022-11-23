local status, onedark = pcall(require, "onedark")
if not status then
	return
end

onedark.setup({
	style = "warmer",
	transparent = true,
	term_colors = true, -- Change terminal color, selected Thene
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
})

onedark.load()
