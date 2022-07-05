-- luacheck: ignore
return {
  ansiblels = {},
  bashls = {},
  dockerls = {
    cmd = {
      "env",
      "ASDF_NODEJS_VERSION=18.4.0",
      "docker-langserver",
      "--stdio",
    },
  },
  hls = {},
  rust_analyzer = {},
  sumneko_lua = {
    settings = {
      -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua
      Lua = {
        runtime = { version = "LuaJIT", path = runtime_path },
        diagnostics = { globals = { "vim" } },
        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        telemetry = { enable = false },
      },
    },
  },
  terraformls = {},
  yamlls = {
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
  },
}
