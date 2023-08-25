local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

local plugins = {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  { 'projekt0n/github-nvim-theme', tag = 'v0.0.7' },
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lua'},
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    },
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true },
  },
  {'romgrk/barbar.nvim',
     dependencies = {
       'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
       'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
     },
     init = function() vim.g.barbar_auto_setup = false end,
     opts = {
       -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
       -- animation = true,
       -- insert_at_start = true,
       -- …etc.
     },
     version = '^1.0.0', -- optional: only update when a new 1.x version is released
   },
}

require("lazy").setup(plugins, {})

