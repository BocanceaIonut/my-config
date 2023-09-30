require("nvim-jest").setup({
	-- Jest executable
	-- By default finds jest in the relative project directory
	-- To override with an npm script, provide 'npm test --' or similar
	jest_cmd = "/Users/i.bocancea/Work/Klarna/pgw-frontend-components/node_modules/jest/bin/jest.js",

	-- Prevents tests from printing messages
	silent = false,
})
