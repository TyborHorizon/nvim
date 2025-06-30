require("lspconfig").gopls.setup({
  on_attach = function(client, bufnr)
    if vim.lsp.inlay_hint then
      vim.lsp.inlay_hint(bufnr, false)
    end
  end,
})
