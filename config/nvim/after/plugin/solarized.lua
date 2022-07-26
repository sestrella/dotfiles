local ok, solarized = pcall(require, "solarized")
if not ok then
  return
end

vim.o.termguicolors = true
solarized.set()
