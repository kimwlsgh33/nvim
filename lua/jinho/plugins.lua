-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  print("Packer is not installed")
  return
end

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")

  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

  use("szw/vim-maximizer") -- maximizes and restores current window

  -- Flutter
  use("akinsho/flutter-tools.nvim")

  -- colorscheme
  use("folke/tokyonight.nvim")
  use("navarasu/onedark.nvim")

  -- essential plugins
  use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome) (ys + motion)
  use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

  -- commenting with gc
  use("numToStr/Comment.nvim")

  -- startup screen
  use("glepnir/dashboard-nvim")

  -- toggle terminal
  use("akinsho/toggleterm.nvim")

  use({
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
    tag = "nightly", -- optional, updated every week. (see issue #1193)
  })

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder
  use({ "nvim-telescope/telescope-dap.nvim" }) -- telescope extension for debugging

  -- lsp manager
  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  })

  use("jose-elias-alvarez/null-ls.nvim")

  -- autocompletion & snippets
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths
  use("hrsh7th/cmp-cmdline") -- for autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin

  -- for lua snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets
  use('Neevash/awesome-flutter-snippets') -- flutter snippets


  use({
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
  })

  -- configuring lsp servers
  -- use("neovim/nvim-lspconfig") -- easily configure language servers
  use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
  use("simrat39/rust-tools.nvim") -- rust tools

  -- debugging
  use("mfussenegger/nvim-dap")

  -- formatting & linting
  -- treesitter configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

  use("github/copilot.vim")

  use("smolck/command-completion.nvim")

  use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

  if packer_bootstrap then
    require("packer").sync()
  end
end)
