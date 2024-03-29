vim.g.mapleader = " " -- 명령키 설정(space)

local keymap = vim.keymap -- for concisencess

-- general keymaps

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>") -- none highlight

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split wndow vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally

keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split windows
-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
-- keymap.set("n", "<leader>tn", ":bnext<CR>")
-- keymap.set("n", "<leader>tp", ":bprevious<CR>")

---
-- Tabline, BufferLine
---
keymap.set("n", "<leader>cr", ":BufferLineCloseRight<CR>") -- close right tab
keymap.set("n", "<leader>cl", ":BufferLineCloseLeft<CR>") -- close left tab
keymap.set("n", "<leader>tx", ":BufferLinePickClose<CR>") -- close current tab
keymap.set("n", "<leader>to", ":BufferLinePick<CR>") -- open new tab
keymap.set("n", "<leader>tn", ":BufferLineCycleNext<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":BufferLineCyclePrev<CR>") -- go to previous tab
keymap.set("n", "<leader>tmn", ":BufferLineMoveNext<CR>") -- move to next tab
keymap.set("n", "<leader>tmp", ":BufferLineMovePrev<CR>") -- move to previous tab
keymap.set("n", "<leader>tc", ":BufferLineSortByDirectory<CR>") -- sort by directory
keymap.set("n", "<leader>ts", ":BufferLineSortByExtension<CR>") -- sort by extension
keymap.set("n", "<leader>p", ":BufferLineTogglePin<CR>") -- pin/unpin tab

-- plugins keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--------------------------------------------------
-- telescope -------------------------------------
--------------------------------------------------
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fg", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
-- keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>") -- list recently opened files
keymap.set("n", "<leader>ft", "<cmd>Telescope tags<cr>") -- list tags in current working directory
keymap.set("n", "<leader>od", "<cmd>e ~/.config/nvim/init.lua<cr>") -- open init.lua

-- history ( h )
keymap.set("n", "<leader>hc", "<cmd>Telescope command_history<cr>") -- list available commands
keymap.set("n", "<leader>hs", "<cmd>Telescope search_history<cr>") -- list available commands

-- colorscheme
keymap.set("n", "<leader>cs", "<cmd>Telescope colorscheme<cr>") -- list available colorschemes

-- nvim-dap
keymap.set("n", "<leader>dh", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
keymap.set("n", "<leader>dn", "<cmd>lua require'dap'.continue()<cr>")
keymap.set("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>")
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>")
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.open({},'vsplit')<cr><C-w>l")
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
-- keymap.set("n", "<leader>dv", "<cmd>lua require'dap.ui.variables'.hover()<cr>")
-- keymap.set("n", "<leader>d?", "<cmd>lua require'dap.ui.variables'.scopes()<cr>")
keymap.set("n", "<leader>de", "<cmd>lua require'dap'.set_exception_breakpoints({'all'})<cr>")
keymap.set("n", "<leader>df", "<cmd>Telescope dap frames<cr>")
keymap.set("n", "<leader>db", "<cmd>Telescope dap list_breakpoints<cr>")

-- flutter
keymap.set("n", "<leader>fr", "<cmd>FlutterRun<cr>")
keymap.set("n", "<leader>fe", "<cmd>FlutterEmulators<cr>")
keymap.set("n", "<leader>fd", "<cmd>FlutterDevices<cr>")
keymap.set("n", "<leader>fo", "<cmd>FlutterOutlineToggle<cr>")
keymap.set("n", "<leader>dv", "<cmd>FlutterVisualDebug<cr>")
keymap.set("n", "<leader>rr", "<cmd>FlutterRestart<cr>")
keymap.set("n", "<leader>lc", "<cmd>FlutterLogClear<cr>")
keymap.set("n", "<leader>fq", "<cmd>FlutterQuit<cr>")
