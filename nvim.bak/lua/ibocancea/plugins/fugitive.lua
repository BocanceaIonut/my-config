-- import fugitive plugin safely
local fugitive_setup, fugitive = pcall(require, "vim-fugitive")
if not fugitive_setup then
	return
end

fugitive.setup({})
