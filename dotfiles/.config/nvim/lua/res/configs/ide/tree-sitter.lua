local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = {
    auto_install = true,
  },
  highlight = { enable = true },
  indent = { enable = true },
})
