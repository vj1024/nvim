-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Shorten function name
local map = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
map("n", "<leader>bp", ":bprevious<CR>", opts)
map("n", "<leader>bh", ":bprevious<CR>", opts)
map("n", "<leader>bn", ":bnext<CR>", opts)
map("n", "<leader>bl", ":bnext<CR>", opts)

-- Clear highlights
map("n", "<leader>hs", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
map("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)
map("n", "<C-q>", ":q<CR>", opts)

-- Better paste
map("v", "p", '"_dP', opts)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Plugins --

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fx", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Comment
map("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
map("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- Go
map("n", "<leader>gr", ":TermExec cmd='go run .'<CR>", opts)
map("n", "<leader>gt", ":TermExec cmd='go test -v -count=1 .'<CR>", opts)

-- Open terminal in in current dir.
map("n", "<leader>tt", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })

-- toggles indent lines on and off.
map("n", "<leader>\\", ":IndentBlanklineToggle<CR>:Gitsigns toggle_signs<CR>", opts)
map("n", "<leader>2", ":set shiftwidth=2<CR>", opts)
map("n", "<leader>4", ":set shiftwidth=4<CR>", opts)
