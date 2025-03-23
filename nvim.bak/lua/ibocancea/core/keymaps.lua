-- set leader key to space
vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }
--
-- BarBar
--

-- Move to previous/next
keymap.set("n", "<leader>[", "<Cmd>BufferPrevious<CR>", opts)

keymap.set("n", "<leader>]", "<Cmd>BufferNext<CR>", opts)

-- Re-order to previous/next
keymap.set("n", "<leader><Left>", "<Cmd>BufferMovePrevious<CR>", opts)
keymap.set("n", "<leader><Right>", "<Cmd>BufferMoveNext<CR>", opts)

-- Goto buffer in position...
keymap.set("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", opts)
keymap.set("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", opts)
keymap.set("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", opts)
keymap.set("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", opts)
keymap.set("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", opts)
keymap.set("n", "<leader>6", "<Cmd>BufferGoto 6<CR>", opts)
keymap.set("n", "<leader>7", "<Cmd>BufferGoto 7<CR>", opts)
keymap.set("n", "<leader>8", "<Cmd>BufferGoto 8<CR>", opts)
keymap.set("n", "<leader>9", "<Cmd>BufferGoto 9<CR>", opts)
keymap.set("n", "<leader>0", "<Cmd>BufferLast<CR>", opts)

-- Pin/unpin buffer
keymap.set("n", "<leader>`", "<Cmd>BufferPin<CR>", opts)

-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned

-- Close buffer
-- keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- Wipeout buffer
--                 :BufferWipeout

-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

-- Magic buffer-picking mode
keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
keymap.set("n", "<C-s-p>", "<Cmd>BufferPickDelete<CR>", opts)

-- Sort automatically by...
keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
keymap.set("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>", opts)
keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", " ", ":nohl<CR>") -- save all files

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
-- keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
-- keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
-- keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
-- keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- keymap.set("n", "<leader>3", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>4", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>2", ":tabn<CR>") --  go to next tab
-- keymap.set("n", "<leader>1", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>nm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>nn", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>") -- find file in NvimTree

-- telescope
-- keymap.set("n", "<leader>t", ":Telescope find_files<CR>") -- find files within current working directory, respects .gitignore
-- keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>") -- find string in current working directory as you type
-- keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>") -- find string under cursor in current working directory
keymap.set("n", "<leader> ", ":Telescope buffers<CR>") -- list open buffers in current neovim instance
-- keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>") -- list available help tags

-- telescope git commands
-- keymap.set("n", "<leader>gc", ":Telescope git_commits<CR>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
-- keymap.set("n", "<leader>gfc", ":Telescope git_bcommits<CR>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
-- keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- keymap.set("n", "<leader>gs", ":Telescope git_status<CR>") -- list current changes per file with diff preview ["gs" for git status]

-- fzf
keymap.set("n", "<leader>t", ":FZF<CR>")

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- save all
keymap.set("n", "<leader>s", ":wa<CR>") -- save all files

-- Git fugitive
keymap.set("n", "<leader>g", ":Git<CR>")
keymap.set("n", "<leader>df", ":Gdiffsplit<CR>")

-- close window on <leader>q
keymap.set("n", "<leader>q", ":q<CR>")

-- switch between buffers with ,,
keymap.set("n", "<leader>,", ":b#<CR>")

-- Ack search
keymap.set("n", "<leader>ag", "<ESC>:Ack!")

-- Search without jumping to next word
keymap.set("n", "*", ":keepjumps normal! mi*`i<CR>")
