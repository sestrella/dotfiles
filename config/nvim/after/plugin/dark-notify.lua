local ok, dark_notify = pcall(require, "dark_notify")
if not ok then
  return
end

dark_notify.run()
