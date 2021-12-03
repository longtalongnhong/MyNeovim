--[[

Github: https://github.com/longtalongnhong

]]--

local fn = vim.fn

-- Install packer automatically
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Packer is installing ...")
end

-- Auto load plugins file whenever save the file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single'})
    end
    }
  }
)

return packer.startup(function(use)
  use "wbthomason/packer.nvim"  --Packer has manage it self

  --- PLUGINS HERE ---
  use "nvim-lua/popup.nvim"     -- An implement of the Popup PAI firm vim in neovim
  use "nvim-lua/plenary.nvim"   -- Useful lua functions used lots of plugins
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
	}															-- Files management

  -- Automatically set up your configuration after cloning packer.nvim
  if  PACKER_BOOTSTRAP then
  require('packer').sync()
  end
end)
