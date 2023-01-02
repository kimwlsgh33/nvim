-- import toggleterm safely
local status, toggleterm = pcall(require, "toggleterm")
if not status then
  print("toggleterm doesn't exists ")
  return
end

toggleterm.setup({
  function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<C-t>]],
  hide_nubmers = true,
  shade_filetypes = {},
  shade_terminals = true,
  -- shading_factor = 2,
  start_in_insert = true,
  insert_mapping = true, -- if you want to be able to toggle a terminal in insert mode
  persist_size = true,
  direction = "horizontal",
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "curved",
    winblend = 3,
    highlight = {
      border = "Normal",
      background = "Normal"
    },
  },
})

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal = require('toggleterm.terminal').Terminal

local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

local node = Terminal:new({ cmd = "node", hidden = true })
function _NODE_TOGGLE() node:toggle() end

local ncdu = Terminal:new({ cmd = "ncdu", hidden = true })
function _NCDU_TOGGLE() ncdu:toggle() end

local htop = Terminal:new({ cmd = "htop", hidden = true })
function _HTOP_TOGGLE() htop:toggle() end

local python = Terminal:new({ cmd = "python", hidden = true })
function _PYTHON_TOGGLE() python:toggle() end








