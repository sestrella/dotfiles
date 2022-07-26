local ok, lspconfig = pcall(require, "lspconfig")
if not ok then
  return
end

local servers = require("lsp.servers")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local on_attach = function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "<space>f", vim.lsp.buf.formatting, bufopts)
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
end

local default_options = {
  capabilities = capabilities,
  on_attach = on_attach,
}

for server, options in pairs(servers) do
  lspconfig[server].setup(vim.tbl_extend("keep", options, default_options))
end
