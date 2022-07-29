local ok, dark_notify = pcall(require, "dark_notify")

if not ok then
  vim.notify("dark_notify not found", vim.log.levels.WARN)
  return
end

dark_notify.run()
