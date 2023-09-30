local setup, nvim_dap_ui = pcall(require, "nvim_dap_ui")
if not setup then
	return
end

nvim_dap_ui.setup()

local dap, dapui = require("dap"), require("dapui")
require("dapui").setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open({})
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close({})
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close({})
end

vim.keymap.set("n", "<leader>x", require("dapui").toggle)
