local M = {}

M.set_keymaps = function(keymaps, opts)
  for keymap, value in pairs(keymaps) do
    vim.keymap.set(
      "n",
      keymap,
      value.callback,
      vim.tbl_extend("force", opts, value.opts)
    )
  end
end

return M
