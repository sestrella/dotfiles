-- ----
-- Current settings are inspired by the following repositories:
--
-- - https://github.com/ThePrimeagen/.dotfiles/tree/master/nvim/.config/nvim
-- - https://github.com/jonhoo/configs/tree/master/editor/.config/nvim
-- - https://github.com/nvim-lua/kickstart.nvim
-- - https://github.com/tjdevries/config_manager/tree/master/xdg_config/nvim
-- ----

-- providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0

-- vim.g.mapleader = "<space>"
-- vim.g.maplocalleader = "<space>"

-- screen
vim.o.colorcolumn = "80"
vim.o.cursorline = true
vim.o.laststatus = 3
vim.o.number = true
vim.o.relativenumber = true
-- spaces
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
-- windows
vim.o.splitbelow = true
vim.o.splitright = true
-- search
vim.o.ignorecase = true
vim.o.smartcase = true

require("plugins")

local arrows = {
  ["<right>"] = "Use h instead",
  ["<down>"] = "Use j instead",
  ["<up>"] = "Use k instead",
  ["<left>"] = "Use l instead",
}

for arrow, message in pairs(arrows) do
  vim.keymap.set({ "n", "v" }, arrow, function()
    print(message)
  end, { desc = "Disable arrow" })
end
