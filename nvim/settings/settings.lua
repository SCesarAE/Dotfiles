--API aliases
local cmd = vim.cmd
local api = vim.api
local opt = vim.opt
local g = vim.g


--UI
opt.termguicolors = true 	-- Enable colors in terminal
opt.number = true		-- Make line number default
opt.relativenumber = true 	-- Make relative number default
opt.showcmd = true
opt.showmatch = true
opt.encoding = "utf-8"		-- Set UTF-8 encoding
opt.mouse = "a"			-- Enable mouse mode
opt.hlsearch = true 		-- Set highlight on search
opt.breakindent = true 		-- Enable break indent
opt.undofile = true 		-- Save undo history
opt.ignorecase = true 		-- Case insensitive searching unless /C or capital in search
opt.smartcase = true 		-- Smart case
opt.updatetime = 250 		-- Decrease update time
opt.clipboard = "unnamedplus" 	-- Access system clipboard

-- Highlight on yank
cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
