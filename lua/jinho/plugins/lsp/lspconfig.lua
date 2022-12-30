-- 클라이언트 기능 설정, LSP서버에 편집기 정보 전달


-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

-- get lsp_default_config
local lsp_defaults = lspconfig.util.default_config

-- combine lspconfig and cmp-nvim-lsp
lsp_defaults.capabilities = vim.tbl_deep_extend("force", lsp_defaults.capabilities, cmp_nvim_lsp.default_capabilities())

-- search lspconfig : :help lspconfig-setup

-- set sumneko_lua lsp
lspconfig.sumneko_lua.setup({
	single_file_support = true,
	flags = {
		debounce_text_changes = 150,
	},
})

-- set LspAttach binding
vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function()
		local bufmap = function(mode, lhs, rhs)
			local opts = { buffer = true }
			vim.keymap.set(mode, lhs, rhs, opts)
		end

		-- Displays hover information about the symbol under the cursor
		bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")

		-- Jump to the definition
		bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")

		-- Jump to the declaration
		bufmap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")

		-- Lists all the implementations for the symbol under the cursor
		bufmap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")

		-- Jumps to the definition of the type symbol
		bufmap("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")

		-- Lists all the references
		bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")

		-- Displays a function's signature information
		bufmap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>")

		-- Renames the symbol under the cursor
		bufmap("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>")

		-- Selects a code action available at the currnet cursor position
		bufmap("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<CR>")
		bufmap("n", "<F4>", "<cmd>lua vim.lsp.buf.range_code_action()<CR>")

		-- show diagnostics in a floating window
		bufmap("n", "gl", "<cmd>lua vim.lsp.diagnostic.open_float()<CR>")

		-- Move to the previous diagnostic
		bufmap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")

		-- Move to the next diagnostic
		bufmap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
	end,
})
