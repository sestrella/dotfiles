if not pcall(require, "nvim-treesitter") then
  return
end

require("nvim-treesitter.configs").setup({
  auto_install = true,
  highlight = {
    enable = true
  }
})
