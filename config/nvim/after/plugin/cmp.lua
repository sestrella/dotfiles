local ok, cmp = pcall(require, "cmp")
if not ok then
  return
end

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({ { name = "nvim_lsp" }, { name = "vsnip" } }),
})
