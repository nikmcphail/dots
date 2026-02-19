return {
	"ibhagwan/fzf-lua",
	lazy = false,
	dependencies = { "nvim-mini/mini.icons" },
	opts = {
		fzf_colors = true,
		fzf_opts = {
			["--no-scrollbar"] = false,
			["--cycle"] = true,
			["--ansi"] = true,
			["--height"] = "100%",
			["--highlight-line"] = true,
		},
		winopts = {
			height = 0.90,
			width = 0.80,
			preview = {
				layout = "vertical",
			},
		},
		defaults = {
			formatter = "path.dirname_first",
		},
		keymap = {
			["ctrl-k"] = "up",
			["ctrl-j"] = "down",
			["ctrl-b"] = "preview-page-up",
			["ctrl-f"] = "preview-page-down",
			["ctrl-u"] = "half-page-up",
			["ctrl-d"] = "half-page-down",
			["ctrl-c"] = "abort",
		},
	},
	keys = {
		{
			"<leader><leader>",
			function()
				require("fzf-lua").files()
			end,
			desc = "Find files in project directory",
		},
		{
			"<leader>/",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "Find by grepping project directory (not fuzzy)",
		},
		{
			"<leader>fp",
			function()
				require("fzf-lua").grep()
			end,
			desc = "[f]ind by grepping [p]roject directory",
		},
		{
			"<leader>fc",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "[f]ind by grepping in [c]urrent buffer",
		},
		{
			"<leader>fr",
			function()
				require("fzf-lua").resume()
			end,
			desc = "[f]ind in [r]esume search",
		},
		{
			"<leader>fu",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "find in open b[u]ffers",
		},
		{
			"<leader>fw",
			function()
				require("fzf-lua").grep_cword()
			end,
			desc = "[f]ind current [w]ord",
		},
		{
			"<leader>fW",
			function()
				require("fzf-lua").grep_cWORD()
			end,
			desc = "[f]ind current [W]ORD",
		},
		{
			"<leader>fd",
			function()
				require("fzf-lua").diagnostics_document()
			end,
			desc = "[f]ind [d]iagnostics",
		},
		{
			"<leader>fo",
			function()
				require("fzf-lua").oldfiles()
			end,
			desc = "[f]ind [o]ld files",
		},
		{
			"<leader>fa",
			function()
				require("fzf-lua").autocmds()
			end,
			desc = "[f]ind [a]utocmds",
		},
		{
			"<leader>gs",
			function()
				require("fzf-lua").git_status()
			end,
			desc = "find [g]it [s]tatus",
		},
		{
			"<leader>gc",
			function()
				require("fzf-lua").git_commits()
			end,
			desc = "find [g]it [c]ommits",
		},
		{
			"<leader>gbl",
			function()
				require("fzf-lua").git_blame()
			end,
			desc = "find [g]it [bl]ame",
		},
		{
			"<leader>gbr",
			function()
				require("fzf-lua").git_branches()
			end,
			desc = "find [g]it [br]anches",
		},
		{
			"<leader>fv",
			function()
				require("fzf-lua").nvim_options()
			end,
			desc = "[f]ind n[v]im options",
		},
		{
			"<leader>vh",
			function()
				require("fzf-lua").helptags()
			end,
			desc = "[v]iew nvim [h]elp",
		},
		{
			"<leader>fig",
			function()
				require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "find in nvim con[fig]",
		},
	},
}
