 --[[
  1
  2   ██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗
  3   ██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  4   ██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
  5   ██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
  6   ██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
  7   ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
  8
  9 Neovim init file
 10
 11 Version: 0.7.1_rev3 - 2021/10/09
 12 Maintainer: Brainf+ck
 13 Website: https://github.com/brainfucksec/neovim-lua
 14
 15 --]]

--      Archivo de config básico
vim.opt.mouse = 'a'
-- Importamos módulos Lua:

require('settings') ---------------------------- Settings
require('keymaps') ----------------------------- Keymaps
require('plugins/packer')-------------------- Plugin manmager
-- require('plugins/ayu')----------------------- Tema de color


-- Plugins

