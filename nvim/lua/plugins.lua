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

local plugins = {
    "ellisonleao/gruvbox.nvim",
    "Mofiqul/dracula.nvim",

    -- Transparent Background
    "xiyaowong/transparent.nvim",

    -- Tree-Sitter
    "nvim-treesitter/nvim-treesitter",

    -- File Tree
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {"nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup {}
        end
    },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
         dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Lsp config
    "neovim/nvim-lspconfig"
}

local opts = {}

require("lazy").setup(plugins, opts)
