local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga { server_filetype_map = {} }

local opts = { noremap = true, silent = true}
local map  = vim.keymap.set

map("n", "<C-j>", ":Lspsaga diagnostic_jump_next<CR>", opts)
map("n", "K", ":Lspsaga hover_doc<CR>", opts)

map("n", "ca", ":Lspsaga code_action<CR>", opts)
map("n", "gd", ":Lspsaga lsp_finder<CR>", opts)
map("i", "<C-k>", ":Lspsaga signature_help<CR>", opts)
map("n", "gp", ":Lspsaga preview_definition<CR>", opts)
map("n", "gr", ":Lspsaga rename<CR>", opts)
