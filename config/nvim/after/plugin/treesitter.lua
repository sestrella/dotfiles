if not pcall(require, "nvim-treesitter") then
  vim.notify("nvim-treesitter not found", vim.log.levels.WARN)
  return
end

require("nvim-treesitter.configs").setup({
  auto_install = true,
  highlight = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  }
})
