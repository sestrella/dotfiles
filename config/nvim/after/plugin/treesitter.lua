if not pcall(require, "nvim-treesitter") then
  vim.notify("nvim-treesitter not found", vim.log.levels.WARN)
  return
end

local textobjects_config = function()
  if pcall(require, "nvim-treesitter-textobjects") then
    -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects#text-objects-move
    return {
      textobjects = {
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = "@class.outer",
          },
          goto_next_end = {
            ["]M"] = "@function.outer",
            ["]["] = "@class.outer",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[["] = "@class.outer",
          },
          goto_previous_end = {
            ["[M"] = "@function.outer",
            ["[]"] = "@class.outer",
          },
        },
      }
    }
  end
  vim.notify("nvim-treesitter-textobjects not found", vim.log.levels.WARN)
  return {}
end

require("nvim-treesitter.configs").setup(vim.tbl_extend("error", {
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
}, textobjects_config()))

local ok, treesitter_context = pcall(require, "treesitter-context")
if ok then
  treesitter_context.setup({ enable = true })
else
  vim.notify("treesitter-context not found", vim.log.levels.WARN)
end
