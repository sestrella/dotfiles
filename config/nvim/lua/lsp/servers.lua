local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local server = function(cmd, name, value)
  if vim.fn.executable(cmd) == 1 then
    return { [name] = value }
  end
  vim.notify(string.format("%s not found", cmd), vim.log.levels.WARN)
  return {}
end

local ansiblels = server("ansible-language-server", "ansiblels", {})
local bashls = server("bash-language-server", "bashls", {})
local rust_analyzer = server("rust-analyzer", "rust_analyzer", {})
local sumneko_lua = server("lua-language-server", "sumneko_lua", {
  settings = {
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua
    Lua = {
      runtime = { version = "LuaJIT", path = runtime_path },
      diagnostics = { globals = { "vim" } },
      workspace = { library = vim.api.nvim_get_runtime_file("", true) },
      telemetry = { enable = false },
    },
  }
})
local terraformls = server("terraform-ls", "terraformls", {})
local yamlls = server("yaml-language-server", "yamlls", {
  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/circleciconfig.json"] = "/.circleci/config.yml",
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*.yml",
        ["https://raw.githubusercontent.com/ansible-community/schemas/main/f/ansible-lint.json"] = "/.ansible-lint",
        ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "/docker-compose*.yml",
      },
    },
  },
})

return vim.tbl_extend("error",
  ansiblels,
  bashls,
  rust_analyzer,
  sumneko_lua,
  terraformls,
  yamlls
)
