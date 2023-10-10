require("dapui").setup()
require("nvim-dap-virtual-text").setup({})
vim.keymap.set("n", "<leader>dr", ":lua require'dapui'.open({reset = true})<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require'dapui'.close()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<F1>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F2>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F3>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F4>", ":lua require'dap'.step_out()<CR>")

local dap = require('dap')
dap.adapters.codelldb = {
    type = 'server',
    port = "${port}",
    executable = {
        command = '/home/bret/Downloads/extension/adapter/codelldb',
        args = {"--port", "${port}"},
    },
}
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd()..'/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}
dap.configurations.rust = dap.configurations.cpp

