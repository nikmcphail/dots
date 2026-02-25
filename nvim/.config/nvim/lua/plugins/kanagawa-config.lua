local kanagawa = require("kanagawa")

kanagawa.setup({
    transparent = true,
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                },
            },
        },
    },
    overrides = function()
        return {
            NormalFloat = { bg = "none" },
            FloatBoarder = { bg = "none" },
            FloatTitle = { bg = "none" },
        }
    end,
})

vim.cmd.colorscheme("kanagawa")
