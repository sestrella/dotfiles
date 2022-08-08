local ok, treesitter_context = pcall(require, "treesitter-context")
if ok then
  treesitter_context.setup({ enable = true })
else
  vim.notify("treesitter-context not found", vim.log.levels.WARN)
end
