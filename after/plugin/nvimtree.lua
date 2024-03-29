vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },

    view = {
        width = 30,
    },

    renderer = {
        group_empty = true,
    },

    filters = {
        dotfiles = false,
    },
})

vim.keymap.set("n","<leader>fc",":NvimTreeToggle<CR>",{ silent = true })
vim.keymap.set("n","<leader>nf",":NvimTreeFocus<CR>",{ silent = true })
vim.keymap.set("n","<leader>fd",":NvimTreeFindFile<CR>",{ silent = true })
vim.keymap.set("n","<leader>dd",":NvimTreeCollapse<CR>",{ silent = true })
