require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup {
  settings = {
    ["rust-analyzer"] = {
      check = {
        command = "clippy",
      },
      cargo = {
        allFeatures = true,
      },
      procMacro = {
        enable = true
      },
    }
  }
}

lspconfig.gleam.setup {
  cmd = { "gleam", "lsp" },
  filetypes = { "gleam" },
  root_dir = lspconfig.util.root_pattern("gleam.toml", ".git")
}

lspconfig.denols.setup {
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc", "deno.lock"),
  init_options = {
    lint = true,
    unstable = true,
  },
}

lspconfig.gopls.setup {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    },
  },
}
