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
    -- Themes
    "ellisonleao/gruvbox.nvim",
    "Mofiqul/dracula.nvim",
    "folke/tokyonight.nvim",

    -- nvim-web-devicons
    "nvim-tree/nvim-web-devicons",

    -- Transparent Background
    "xiyaowong/transparent.nvim",

    -- BufferLine
    {
        "akinsho/bufferline.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- For icons
        config = function()
            require("bufferline").setup({
                options = {
                    separator_style = "slant", -- Rounded or "slant", "thick", "thin"
                    diagnostics = "nvim_lsp", -- Show LSP diagnostics in bufferline
                    offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } }, -- Adjust if using NvimTree
                    show_buffer_close_icons = false,
                    show_close_icon = false,
                    always_show_bufferline = true,
                }
            })
        end
    },

    -- Auto-Pairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
       
    -- Icons for autocomplete
    "onsails/lspkind.nvim",    

    -- Tree-Sitter
    "nvim-treesitter/nvim-treesitter",

    -- Completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",                 -- Snippet engine
    "saadparwaiz1/cmp_luasnip",          -- Snippet completion
    "hrsh7th/cmp-buffer",                -- Buffer completions
    "hrsh7th/cmp-path",                  -- Path completions
    "hrsh7th/cmp-cmdline",               -- Command-line completions

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
