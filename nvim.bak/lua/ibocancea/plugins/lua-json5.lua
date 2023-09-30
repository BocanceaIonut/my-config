-- import fzf-lua plugin safely
local lua_json5, lua_json5_setup = pcall(require, "lua_json5")
if not lua_json5_setup then
	return
end

table.insert(vim._so_trails, "/?.dylib")
