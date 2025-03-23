-- import avante plugin safely
local setup, avante = pcall(require, "avante")
if not setup then
	return
end

-- enable avante
avante.setup({
	provider = "copilot",
	copilot = {
		-- model = 'claude-3.5-sonnet',
		model = "claude-3.7-sonnet",
	},
	windows = {
		input = {
			start_insert = false,
		},
	},
	mappings = {
		diff = {
			ours = "<leader>ado",
			theirs = "<leader>adt",
			all_theirs = "<leader>ada",
			both = "<leader>adb",
			cursor = "<leader>adc",
			next = "<leader>adn",
			prev = "<leader>adp",
		},
		files = {
			add_current = "<leader>ab", -- Add current buffer to selected files
		},
	},
})
