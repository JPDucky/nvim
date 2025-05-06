return {
	'stevearc/conform.nvim',
	event = { 'BufWritePre' },
	cmd = { 'ConformInfo' },
	keys = {
		{
		'<leader>ff',
		function()
			require('conform').format({ async = true })
		end,
		mode = "n",
		desc = 'Format buffer',
		},
	},
	---@module 'conform'
	---@type conform.setupOpts

	opts = {},
	config = function()

		require('conform').setup({
			formatters_by_ft = {
				lua = { 'stylua' },
				python = { 'isort', 'black' },
				javascript = { {'prettierd', 'prettier'}, stop_after_first = true },
				rust = { 'rustfmt', lsp_format = 'fallback' },
			},
			format_on_save = { timeout_ms = 500 },
			formatters = {
				shfmt = { prepend_args = { '-i', '2' }},
				ansible_lint = {},
				ast_grep = {},
				autoflake = {},
				autopep8 = {},
				beautysh = {},
				bicep = {},
				black = {},
				buf = {},
				cbfmt = {},
				clang_format = {},
				cmake_format = {},
				codespell = {},
				commitmsgfmt = {},
				css_beautify = {},
				darker = {},
				djlint = {},
				docformatter = {},
				doctoc = {},
				eslint_d = {},
				fixjson = {},
				format_queries = {},
				gawk = {},
				gci = {},
				gersemi = {},
				gofmt = {},
				html_beautify = {},
				htmlbeautifier = {},
				isort = {},
				jq = {},
				js_beautify = {},
				lua_format = {},
				markdown_toc = {},
				markdownfmt = {},
				markdownlint = {},
				mdformat = {},
				nginxfmt = {},
				nixpkgs_fmt = {},
				perltidy = {},
				pg_format = {},
				ruff_fix = {},
				ruff_format = {},
				ruff_organize_imports = {},
				rustfmt = {},
				rustywind = {},
				shellcheck = {},
				shellharden = {},
				shfmt = {},
				sleek = {},
				snakefmt = {},
				sql_formatter = {},
				sqlfluff = {},
				sqlfmt = {},
				sqruff = {},
				standardjs = {},
				stylels = {},
				stylua = {},
				superhtml = {},
				taplo = {},
				templ = {},
				terraform_fmt = {},
				terragrunt_hclfmt = {},
				tofu_fmt = {},
				trim_newlines = {},
				trim_whitespace = {},
				typos = {},
				uncrustify = {},
				usort = {},
				xmlformatter = {},
				xmllint = {},
				xmlstarlet = {},
				yamlfix = {},
				yamlfmt = {},
				yapf = {},
				yq = {},
				zigfmt = {},
				ziggy = {},
				ziggy_schema = {},
			}
		})

		vim.api.nvim_create_user_command("Format", function(args)
			local range = nil
			if args.count ~= -1 then
				local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
				range = {
					start = { args.line1, 0 },
					["end"] = { args.line2, end_line:len() },
				}
			end
			require('conform').format({ async = true, lsp_format = 'fallback', range = range })
		end, { range = true })
	end,

	init = function()
		vim.o.formatexpr = "v:lua.require('conform').formatexpr()"
	end,
}
