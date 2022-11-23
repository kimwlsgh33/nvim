local status, jdtls = pcall(require, "jdtls")
if not status then
	vim.notify("JDTLS not found, install")
end

local config = {
	cmd = { "~/.local/share/nvim/site/pack/packer/start" },
	root_dir = vim.fs.dirname(vim.fs.find({ ".gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
jdtls.start_or_attach(config)
