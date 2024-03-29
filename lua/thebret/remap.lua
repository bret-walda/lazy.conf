vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true})

local wk = require('which-key')

wk.register({
    c = {
        "<cmd>cd %:p:h<cr>","change to current dir in nvim",
        c = {"change this label"},
    },
}, { prefix = "<leader>"})

