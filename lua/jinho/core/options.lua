local opt = vim.opt -- for concisencess

-- encoding
opt.fileencoding = "utf-8"
opt.encoding = "utf-8"

-- line numbers
opt.number = true -- Shows the line numbers
opt.relativenumber = true

-- tabs & indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true -- Indent a new line

-- line wraping
opt.wrap = false

-- search opt.tings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true -- Highlights the current line in the editor
opt.winblend = 0
-- opt.wildoptions = "pum"
-- opt.pumblend = 5
-- opt.background = "dark"
--
-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

-- clipboard
-- opt.clipboard:append("unnamedplus") -- Enables the clipboard between Vim/Neovim and other applications.

-- split window
opt.splitbelow = true
opt.splitright = true -- Change the split screen behavior
opt.inccommand = "split" -- Show replacements in a split screen

opt.iskeyword:append("-")
opt.completeopt = "noinsert,menuone,noselect" -- Modifies the auto-complete menu to behave more like an IDE.
opt.hidden = true -- Hide unused buffers
opt.mouse = "a" -- Allow to use the mouse in the editor
opt.title = true -- Show file title
opt.wildmenu = true -- Show a more advance menu
-- opt.cc = 80 -- Show at 80 column a border for good code style
