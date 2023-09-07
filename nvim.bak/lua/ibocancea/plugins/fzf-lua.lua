-- import fzf-lua plugin safely
local fzf_lua_setup, fzf_lua = pcall(require, "fzf-lua")
if not fzf_lua_setup then
	return
end

fzf_lua.setup({
	preview_opts = "hidden",
	winopts = {
		preview = {
			layout = "vertical",
			vertical = "up:50%",
		},
	},
})
