-- stylua: ignore start
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>-", "<cmd>Oil --float<CR>", { desc = "Open parent directory (floating)" })
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
vim.keymap.set("n", "<leader>M", "<cmd>Mason<CR>", { desc = "Open Mason" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<M-h>", "<cmd>bprevious<CR>")
vim.keymap.set("n", "<M-l>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<M-x>", "<cmd>bdelete<CR>")

-- These are annoying on my laptop's specific keyboard
vim.keymap.set({"n", "v", "i"}, "<PageUp>", "<Nop>")
-- stylua: ignore end
