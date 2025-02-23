
local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end


-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>o", "<C-w>w<CR>")

-- NeoGit
map("n", "<leader>gg", "<CMD>Neogit<CR>")
map("n", "<leader>gc", "<CMD>Neogit commit<CR>")


-- ToggleTerm
map("n", "<leader>t", "<CMD>ToggleTerm<CR>")

-- New Windows
map("n", "<leader>v", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Move Windows
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>l", "<C-w>l")
map("n", "<leader>j", "<C-w>j")
map("n", "<leader>k", "<C-w>k")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
