local opt = vim.opt
local cmd = vim.cmd
local fn = vim.fn

cmd([[packadd packer.nvim]])
cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])


-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]


return require("packer").startup(function(use)
  ---
  -- Plugins list...
  ---

  ---- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Tokyonight theme
  use 'folke/tokyonight.nvim'

  --Linea de estado
  use 'nvim-lualine/lualine.nvim'

  if install_plugins then
    require('packer').sync()
  end
end)


