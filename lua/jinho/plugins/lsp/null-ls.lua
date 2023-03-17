local null_ls_status, null_ls = pcall(require, "null-ls")
if not null_ls_status then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({
			extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--tab-width", "2" },
		}),
    -- for 
		formatting.black.with({ extra_args = { "--fast" } }),
    -- for lua
		formatting.stylua,
    -- for python
		diagnostics.flake8,
    -- for c/c++
		formatting.clang_format,
		-- diagnostics.eslint_d,
		-- diagnostics.cspell,
		-- code_actions.cspell,
    code_actions.gitsigns,
	},
})
