local keymap = vim.keymap -- for conciseness
local wk = require("which-key")

-- Clear highlights with leader + nh
wk.register({
    ["<leader>nh"] = {"<cmd>nohl<CR>", "clear highlights"},
})

-- Window mangement
wk.register({
    ["<leader>s"] = {
        name = "+split",
        v = {"<C-w>v", "split vertically"},
        s = {"<C-w>s", "split horizontally"},
        e = {"<C-w>=", "equal size"},
        x = {"<cmd>close<CR>", "close current"},
        -- Navigation
        k = {"<cmd>wincmd k<CR>", "move up"},
        j = {"<cmd>wincmd j<CR>", "move down"},
        h = {"<cmd>wincmd h<CR>", "move left"},
        l = {"<cmd>wincmd l<CR>", "move right"},
    },
})

-- Tab manegment
wk.register({
    ["<leader>t"] = {
        name = "+tab",
        o = {"<cmd>tabnew<CR>", "new tab"},
        x = {"<cmd>tabclose<CR>", "close tab"},
        n = {"<cmd>tabn<CR>", "next tab"},
        p = {"<cmd>tabp<CR>", "prev tab"},
    },
})

-- LSP code actions
wk.register({
    ["<leader>l"] = {
        name = "+lsp",
        a = {"<cmd>lua vim.lsp.buf.code_action()<CR>", "code action"},
    }
})
