return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    icons = { group = vim.g.icons_enabled and "" or "+", separator = "" },
    isable = { filetypes = { "TelescopePrompt" } },
  },
  config = require "plugins.configs.which-key",
}
