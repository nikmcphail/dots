-- local kanagawa = require("kanagawa")
--
-- kanagawa.setup({
--     transparent = true,
--     colors = {
--         theme = {
--             all = {
--                 ui = {
--                     bg_gutter = "none"
--                 },
--             },
--         },
--     },
--     overrides = function()
--         return {
--             NormalFloat = { bg = "none" },
--             FloatBoarder = { bg = "none" },
--             FloatTitle = { bg = "none" },
--         }
--     end,
-- })

local rosepine = require("rose-pine")

rosepine.setup({
	styles = {
		bold = true,
		transparency = true,
		italic = true,
	},
})

vim.cmd.colorscheme("rose-pine")
