return {
  "stevearc/conform.nvim",
  opts = function()
    ---@class ConformOpts
    local opts = {
      -- LazyVim will use these options when formatting with the conform.nvim formatter
      default_format_opts = {
        timeout_ms = 3000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
      },
      ---@type table<string>
      formatters_by_ft = {
        python = { "black", "isort", "autoflake" },
        go = { "gofumpt", "goimports", "goimports-reviser" },
        lua = { "stylua" },
        javascript = { "prettier", "rustywind" },
        typescript = { "prettier", "rustywind" },
        typescriptreact = { "prettier", "rustywind" },
        javascriptreact = { "prettier", " rustywind" },
        nix = { "alejandra" },
        php = { "php_cs_fixer" },
        css = { "prettier" },
        scss = { "prettier" },
        sql = { "sql_formatter" },
        html = { "prettier" },
        json = { "prettier" },
        markdown = { "markdownlint-cli2" },
        yaml = { "yamlfmt" },
        xml = { "xmllint" },
        sh = { "shfmt" },
        astro = { "prettier" },
      },
      -- The options you set here will be merged with the builtin formatters.
      -- You can also define any custom formatters here.
      ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
      formatters = {
        injected = { options = { ignore_errors = true } },
        sqlfluff = {
          command = "sqlfluff",
          args = {
            "fix",
            "--disable-progress-bar",
            "-f",
            "-n",
            "-",
          },
          stdin = true,
        },

        -- Weitere benutzerdefinierte Formatter können hier folgen...
        -- # Example of using dprint only when a dprint.json file is present
        -- dprint = {
        --   condition = function(ctx)
        --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
        --   end,
        -- },
        --
        -- # Example of using shfmt with extra args
        -- shfmt = {
        --   prepend_args = { "-i", "2", "-ci" },
        -- },
      },
    }
    return opts
  end,
}
