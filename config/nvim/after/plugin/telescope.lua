local builtin = require("telescope.builtin")
vim.keymap.set("n", "<c-h>", builtin.keymaps, {})
-- TODO: Check if .git directory exists or default to list_files
vim.keymap.set("n", "<c-p>", builtin.git_files, {})
