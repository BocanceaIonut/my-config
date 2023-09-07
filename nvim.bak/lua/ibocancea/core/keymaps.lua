-- set leader key to space
vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness

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

-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

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
