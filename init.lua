require("jinho.plugins")
require("jinho.core.options")
require("jinho.core.keymaps")
require("jinho.plugins.dashboard")
require("jinho.plugins.comment")
require("jinho.plugins.nvim-tree")
require("jinho.plugins.lualine")
require("jinho.plugins.onedark")
require("jinho.plugins.telescope")
require("jinho.plugins.lsp.lspcmp")
require("jinho.plugins.treesitter")
require("jinho.plugins.gitsigns")
require("jinho.plugins.autopaires")
-- require("jinho.plugins.lsp.null-ls")
require("jinho.plugins.bufferline")
require("jinho.plugins.toggleterm")
require("jinho.plugins.flutter-tools")
require("jinho.plugins.nvim-dap")

local has = function(x)
	return vim.fn.has(x) == 1
end

local is_mac = has("macunix")
local is_win = has("win32")

if is_mac then
	require("jinho.macos")
end

if is_win then
	require("jinho.windows")
end
