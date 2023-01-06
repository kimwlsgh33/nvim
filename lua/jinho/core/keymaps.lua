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
keymap.set("n", "<leader>cr", ":BufferLineCloseRight<CR>") -- close right tab
keymap.set("n", "<leader>cl", ":BufferLineCloseLeft<CR>") -- close left tab
keymap.set("n", "<leader>tx", ":BufferLinePickClose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":bnext<CR>")
keymap.set("n", "<leader>tp", ":bprevious<CR>")

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
keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>") -- list recently opened files
keymap.set("n", "<leader>ft", "<cmd>Telescope tags<cr>") -- list tags in current working directory
keymap.set("n", "<leader>od", "<cmd>e ~/.config/nvim/init.lua<cr>") -- open init.lua

-- history
keymap.set("n", "<leader>hc", "<cmd>Telescope command_history<cr>") -- list available commands
keymap.set("n", "<leader>hs", "<cmd>Telescope search_history<cr>") -- list available commands
-- colorscheme
keymap.set("n", "<leader>cs", "<cmd>Telescope colorscheme<cr>") -- list available colorschemes
