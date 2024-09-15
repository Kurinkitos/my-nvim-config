local wk = require("which-key")

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
