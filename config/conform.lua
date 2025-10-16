local conform = require('conform')

conform.setup({
	formatters_by_ft = {
		lua = { 'stylua' },
		python = { "ruff_format", "ruff_organize_imports", "autopep8", "autoflake" },
		makefile = { "bake" },
		bash = { "beautysh" },
		rust = { "rustfmt", "dioxus", "leptosfmt", lsp_format = "fallback" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		nix = { "alejandra", "nixfmt", stop_after_first = true },
		markdown = { "cbfmt", {"prettierd", "prettier", stop_after_first = true }, "doctoc" },
		c = { "clang-format" },
		css = { "prettierd", "prettier", stop_after_first = true },
		cpp = { "clang-format" },
		toml = { "taplo" },
		yaml = { "prettierd", "prettier", stop_after_first = true },
		json = { "fixjson" },
		gleam = { "gleam" },
		html = { { "prettierd", "prettier", stop_after_first = true}, "rustywind" },
		just = { "just" },
	},
	format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})
