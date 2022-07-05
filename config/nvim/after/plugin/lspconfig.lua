local set_keymaps = function(keymaps, opts)
  for keymap, value in pairs(keymaps) do
    vim.keymap.set(
      "n",
      keymap,
      value.callback,
      vim.tbl_extend("force", opts, value.opts)
    )
  end
end

set_keymaps({
  ["<space>k"] = {
    callback = vim.diagnostic.goto_prev,
    opts = { desc = "Go to the prev error" },
  },
  ["<space>j"] = {
    callback = vim.diagnostic.goto_next,
    opts = { desc = "Go to the next error" },
  },
  ["<space><space>"] = {
    callback = vim.diagnostic.setloclist,
    opts = { desc = "Show errors" },
  },
}, { noremap = true, silent = true })

local lspconfig = require("lspconfig")
local on_attach = function(_client, bufnr)
  set_keymaps({
    ["<space>ca"] = {
      callback = vim.lsp.buf.code_action,
      opts = { desc = "Code action" },
    },
    ["<space>gd"] = {
      callback = vim.lsp.buf.declaration,
      opts = { desc = "Go to declaration" },
    },
    ["<space>gf"] = {
      callback = vim.lsp.buf.definition,
      opts = { desc = "Go to definition" },
    },
    ["<space>fc"] = {
      callback = vim.lsp.buf.formatting,
      opts = { desc = "Format code" },
    },
    ["<space>rn"] = {
      callback = vim.lsp.buf.rename,
      opts = { desc = "Rename" },
    },
    ["<space>sh"] = {
      callback = vim.lsp.buf.signature_help,
      opts = { desc = "Show signature" },
    },
    ["<space>td"] = {
      callback = vim.lsp.buf.type_definition,
      opts = { desc = "Show type definition" },
    },
  }, { noremap = true, silent = true, buffer = bufnr })
  require("lsp_signature").on_attach()
end

local servers = require("lsp.servers")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local default_options = {
  capabilities = capabilities,
  flags = { debounce_text_changes = 150 },
  on_attach = on_attach,
}

for server, options in pairs(servers) do
  lspconfig[server].setup(vim.tbl_extend("force", default_options, options))
end
