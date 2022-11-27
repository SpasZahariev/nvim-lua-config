-- import dap plugin safely
local dap_status, dap = pcall(require, "dap")
if not dap_status then
	return
end

-- import dapui safely
local dapui_status, dapui = pcall(require, "dapui")
if not dapui_status then
	return
end

local keymap = vim.keymap -- for conciseness

-- Debug Adapter Protocol keys
keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>") -- the most important
keymap.set("n", "<F7>", ":lua require'dap'.step_into()<CR>")
keymap.set("n", "<F8>", ":lua require'dap'.step_over()<CR>")
keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>")
keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>") -- set breakpoint with condition
keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>") -- not sure if I will ever use this
keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>") -- need to check this
keymap.set("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>") -- start test debug session

require("dap-go").setup()
require("dapui").setup()

-- add listeners that execute functions when dap sends an event
dap.listeners.after.event_initialized["spas_key"] = function()
	dapui.open()
end

-- execute my keyed function when dap is force closed
dap.listeners.after.event_terminated["spas_key"] = function()
	dapui.close()
end

-- execute my keyed function when dap is gracefully closed
dap.listeners.after.event_exited["spas_key"] = function()
	dapui.close()
end

-- configure icons for Debug signs
vim.fn.sign_define("DapBreakpoint", { text = "💔", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "💩", texthl = "", linehl = "", numhl = "" })
