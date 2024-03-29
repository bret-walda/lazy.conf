require("lsp_lines").setup()

-- Configure diagnostic display settings
vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = true,
})
local is_on = false
local i = 1

local function configure_virtual_lines()
    if is_on then
        vim.diagnostic.config({
            virtual_lines = { only_current_line = true }
        })
        is_on = false
    else
        vim.diagnostic.config({
            virtual_lines = { only_current_line = false }
        })
        is_on = true
        if i == 1 then
            print("Toggle for current line error display, activated for this session")
            i = 0
        end
    end
end

-- Key mappings
vim.keymap.set("", "<leader>lp", require("lsp_lines").toggle)
vim.keymap.set("", "<leader>lc", configure_virtual_lines, {noremap = true, silent = true})

