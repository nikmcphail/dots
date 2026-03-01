-- stylua: ignore start
vim.keymap.set("n", "<leader>M", "<cmd>Mason<CR>", { desc = "Open Mason" })
vim.keymap.set("n", "<leader>U", function() vim.pack.update() end, { desc = "Open vim.pack update" })
vim.keymap.set("n", "<leader>T", "<cmd>Twilight<CR>", { desc = "Toggle Twilight" })

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<M-h>", "<cmd>bprevious<CR>")
vim.keymap.set("n", "<M-l>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<M-x>", "<cmd>bdelete<CR>")

vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })

vim.keymap.set("n", "j", "v:count ? 'j' : 'gj'", { expr = true})
vim.keymap.set("n", "k", "v:count ? 'k' : 'gk'", { expr = true })
vim.keymap.set("n", "<Down>", "v:count ? 'j' : 'gj'", { expr = true })
vim.keymap.set("n", "<Up>", "v:count ? 'k' : 'gk'", { expr = true })

-- These are annoying on my laptop's specific keyboard
vim.keymap.set({"n", "v", "i"}, "<PageUp>", "<Nop>")
vim.keymap.set({"n", "v", "i"}, "<PageDown>", "<Nop>")
-- stylua: ignore end
