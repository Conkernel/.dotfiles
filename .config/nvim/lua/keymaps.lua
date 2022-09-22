-- Aliases

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd



-- Deshabilitamos las flechas en el teclado y no obligan a usar hjkl

map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<righ>', '<nop>', {noremap = true})



-- Para poder usar las teclas hjkl en modo insert mientras pulsamos control

map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<righ>', default_opts)
