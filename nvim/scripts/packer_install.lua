local fn = vim.fn
local cm = vim.cmd

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if fn.empty(fn.glob(install_path)) > 0 then
  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')

  cmd('packadd packer.nvim')
  install_plugins = true
end
