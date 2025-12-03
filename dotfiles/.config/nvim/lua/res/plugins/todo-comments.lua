local c = require("res.utils.colors")
return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "ibhagwan/fzf-lua" },
  opts = {
    keywords = {
      FIX = { icon = " ", color = c.red.main, alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
      TODO = { icon = " ", color = c.cyan.main },
      HACK = { icon = " ", color = c.yellow.main },
      WARN = { icon = " ", color = c.orange.main, alt = { "WARNING", "XXX" } },
      PERF = { icon = " ", alt = { c.blue.main, "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = " ", color = c.green.main, alt = { "INFO" } },
      TEST = { icon = " ", color = c.magenta.main, alt = { "TESTING", "PASSED", "FAILED" } },
    },
  },
}
