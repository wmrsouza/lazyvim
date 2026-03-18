-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local global = vim.g
local opt = vim.opt

-- Editor options
vim.diagnostic.config({ virtual_text = false, signs = false })

global.mapleader = " "
global.autoformat_enabled = true
global.cmp_enabled = false
-- global.diagnostics_mode = 3
global.autoformat = false
global.icons_enabled = false -- true
global.ui_notifications_enabled = true

opt.signcolumn = "auto"
opt.spell = false
opt.number = true -- Print the line number in front of each line
opt.relativenumber = false
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.spell = false
    vim.opt_local.relativenumber = false
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 8
    vim.opt_local.shiftwidth = 8
    vim.diagnostic.config({ virtual_text = false, signs = false })
    vim.lsp.inlay_hint.enable(false)
  end,
})
opt.wrap = true
opt.clipboard = "unnamedplus"

opt.syntax = "on"
opt.autoindent = true
opt.cursorline = true
opt.expandtab = false
opt.shiftwidth = 8
opt.encoding = "UTF-8"
opt.ruler = true
opt.mouse = "a"
opt.title = true
opt.hidden = true
opt.ttimeoutlen = 0
opt.wildmenu = true
opt.showcmd = true
opt.showmatch = true
opt.inccommand = "split"
opt.splitright = true
opt.splitbelow = true
opt.termguicolors = true
opt.colorcolumn = "80"

opt.clipboard:append("unnamedplus")
-- opt.clipboard 'unnamedplus'

opt.tabstop = 8
-- opt.softtabstop = 8

-- opt.completopt = {'menui', 'menuone', 'noselect'}

-- opt.number = true
opt.relativenumber = false
-- opt.cursorline = true
-- opt.splitbelow = true
-- opt.splightright = true
-- vim.opt.termguicolors = true
-- opt.showmode = false
--
