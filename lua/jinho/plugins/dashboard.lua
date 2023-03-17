local home = os.getenv("HOME")
local status, db = pcall(require, "dashboard")

-- logo
hydra = {
	[[]],
	[[]],
	[[]],
	[[   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ]],
	[[    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ]],
	[[          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ]],
	[[           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ]],
	[[          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ]],
	[[   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ]],
	[[  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ]],
	[[ ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ]],
	[[ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ]],
	[[      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ]],
	[[       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ]],
	[[]],
	[[]],
	[[]],
}

neovim = {
	[[]],
	[[]],
	[[]],
	[[]],
	[[                                          /$$              ]],
	[[                                         |__/              ]],
	[[ /$$$$$$$   /$$$$$$   /$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$ ]],
	[[| $$__  $$ /$$__  $$ /$$__  $$|  $$  /$$/| $$| $$_  $$_  $$]],
	[[| $$  \ $$| $$$$$$$$| $$  \ $$ \  $$/$$/ | $$| $$ \ $$ \ $$]],
	[[| $$  | $$| $$_____/| $$  | $$  \  $$$/  | $$| $$ | $$ | $$]],
	[[| $$  | $$|  $$$$$$$|  $$$$$$/   \  $/   | $$| $$ | $$ | $$]],
	[[|__/  |__/ \_______/ \______/     \_/    |__/|__/ |__/ |__/]],
	[[]],
	[[]],
	[[]],
	[[]],
	[[]],
	[[]],
	[[]],
}

db.setup({
	theme = "hyper",
	config = {
		week_header = {
			enable = true,
		},
		shortcut = {
			{ desc = " Update", group = "@property", action = "Lazy update", key = "u" },
			{
				icon = " ",
				icon_hl = "@variable",
				desc = "Files",
				group = "Label",
				action = "Telescope find_files",
				key = "f",
			},
			{
				desc = " Apps",
				group = "DiagnosticHint",
				action = "Telescope app",
				key = "a",
			},
			{
				desc = " dotfiles",
				group = "Number",
				action = "Telescope dotfiles",
				key = "d",
			},
		},
	},
})

-- db.custom_header = neovim
-- db.preview_file_path = home .. "/.config/nvim/static/neovim.cat"
-- db.preview_file_height = 11
-- db.preview_file_width = 70
-- db.custom_center = {
-- 	{
-- 		icon = "  ",
-- 		desc = "Recently latest session                  ",
-- 		shortcut = "SPC l s",
-- 		action = "SessionLoad",
-- 	},
-- 	{
-- 		icon = "  ",
-- 		desc = "Recently opened files                   ",
-- 		action = "Telescope oldfiles",
-- 		shortcut = "SPC f o",
-- 	},
-- 	{
-- 		icon = "  ",
-- 		desc = "Find  File                              ",
-- 		action = "Telescope find_files find_command=rg,--hidden,--files",
-- 		shortcut = "SPC f f",
-- 	},
-- 	{
-- 		icon = "  ",
-- 		desc = "File Browser                            ",
-- 		action = "Telescope file_browser",
-- 		shortcut = "SPC f b",
-- 	},
-- 	{
-- 		icon = "  ",
-- 		desc = "Find  word                              ",
-- 		action = "Telescope live_grep",
-- 		shortcut = "SPC l g",
-- 	},
-- 	{
-- 		icon = "  ",
-- 		desc = "Open Personal dotfiles                  ",
-- 		action = "Telescope dotfiles path=" .. home .. "/.dotfiles",
-- 		shortcut = "SPC o d",
-- 	},
-- }
