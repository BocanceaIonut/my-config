-- import comment plugin safely
local setup, markdown_preview = pcall(require, "markdown-preview")
if not setup then
  return
end

-- enable comment
markdown_preview.setup()
