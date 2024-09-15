local keymap = vim.keymap -- for conciseness
local wk = require("which-key")

local cmp = require("cmp")

-- Clear highlights with leader + nh
wk.add({
    { "<leader>nh", "<cmd>nohl<CR>", desc = "clear highlights"},
})

-- Window mangement
wk.add({
    { "<leader>s", group = "+split" },
    { "<leader>sv", "<C-w>v", desc = "split vertically" },
    { "<leader>ss", "<C-w>s", desc = "split horizontally" },
    { "<leader>se", "<C-w>=", desc = "equal size" },
    { "<leader>sx", "<cmd>close<CR>", desc = "close current"},
    -- Navigation
    { "<leader>sk", "<cmd>wincmd k<CR>", desc = "move up"},
    { "<leader>sj", "<cmd>wincmd j<CR>", desc = "move down"},
    { "<leader>sh", "<cmd>wincmd h<CR>", desc = "move left"},
    { "<leader>sl", "<cmd>wincmd l<CR>", desc = "move right"},
})

-- Tab manegment
wk.add({
    { "<leader>t", group = "tab" },
    { "<leader>tn", "<cmd>tabn<CR>", desc = "next tab" },
    { "<leader>to", "<cmd>tabnew<CR>", desc = "new tab" },
    { "<leader>tp", "<cmd>tabp<CR>", desc = "prev tab" },
    { "<leader>tx", "<cmd>tabclose<CR>", desc = "close tab" },
})

-- LSP code actions
wk.add({
    { "<leader>l", group = "lsp" },
    { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "code action" },
    { "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "symbol hover" },
    { "<leader>ln", "<cmd>lua vim.diagnostic.goto_next()<CR>", desc = "next diagnostic" },
    { "<leader>lp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", desc = "prev diagnostic" },
    { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "rename" },
})
