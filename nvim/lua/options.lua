local opt = vim.opt

-- indentation and line
opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.expandtab = true
opt.autoindent = true
opt.cindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.signcolumn = "number"
opt.wrap = false

-- Appearance
opt.colorcolumn = "80"
vim.cmd[[TransparentEnable]]

-- Behaviour
opt.scrolloff = 10
opt.encoding = "UTF-8"
opt.mouse = "r"
opt.path = opt.path + "**"

-- ColourScheme
vim.cmd[[colorscheme tokyonight-storm]]
