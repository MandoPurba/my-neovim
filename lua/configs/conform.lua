local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    typescript = { "deno_fmt" },
    javascript = { "deno_fmt" },
    json = { "deno_fmt" },
    jsonc = { "deno_fmt" },
    rust = { "rustfmt" },
    gleam = { "gleam_fmt" },

  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
