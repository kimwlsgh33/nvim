local status, nvimtree = pcall(require, "nvim-tree")
if not status then
  return
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- setup with some options
nvimtree.setup({
  actions = {
    open_file = {
      window_picker = {
        enable = true,
      },
    },
  },
})
