if not pcall(require, "telescope") then
  vim.notify("telescope not found", vim.log.levels.WARN)
  return
end

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<c-h>", builtin.keymaps, {})
vim.keymap.set("n", "<c-p>", builtin.git_files, {})
