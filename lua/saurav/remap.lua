vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ff", vim.cmd.Ex) 
vim.keymap.set("v", "J", ":m '>+1gv=gv")
vim.keymap.set("v", "K", ":m '<-2gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnextzz")
vim.keymap.set("n", "<C-j>", "<cmd>cprevzz")
vim.keymap.set("n", "<leader>k", "<cmd>lnextzz")
vim.keymap.set("n", "<leader>j", "<cmd>lprevzz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %", { silent = true })


-- nvim tree remap
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
