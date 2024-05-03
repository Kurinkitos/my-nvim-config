local wk = require("which-key")


-- Window mangement
--wk.register({
--    ["<leader>s"] = {
--        name = "+split",
--        v = {"<C-w>v", "split vertically"},
--        s = {"<C-w>s", "split horizontally"},
--        e = {"<C-w>=", "equal size"},
--        x = {"<cmd>close<CR>", "close current"},
--        -- Navigation
--        k = {"<cmd>wincmd k<CR>", "move up"},
--        j = {"<cmd>wincmd j<CR>", "move down"},
--        h = {"<cmd>wincmd h<CR>", "move left"},
--        l = {"<cmd>wincmd l<CR>", "move right"},
--    },
--})


wk.register({
    ["<localleader>"] = {
        a = { "<cmd>RustLsp codeAction<CR>", "code action" },
    },
})

wk.register({
    ["<localleader>r"] = {
        name ="+run",
        r = {"<cmd>RustLsp! runnables<CR>", "rerun latest"},
        s = {"<cmd>RustLsp runnables<CR>", "select runnable"},
    },
})

wk.register({
    ["<localleader>t"] = {
        name ="+test",
        r = {"<cmd>RustLsp! testables<CR>", "rerun latest"},
        s = {"<cmd>RustLsp testables<CR>", "select testable"},
    },
})
