-- import comment plugin safely
local setup, barbar = pcall(require, "barbar")
if not setup then
	return
end

-- enable comment
barbar.setup()
