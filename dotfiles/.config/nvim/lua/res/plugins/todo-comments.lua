local c = require("res.utils.colors")
return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "ibhagwan/fzf-lua" },
  opts = {
    keywords = {
      FIX = { icon = " ", color = c.acc.red, alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
      TODO = { icon = " ", color = c.acc.cyan },
      HACK = { icon = " ", color = c.acc.yellow },
      WARN = { icon = " ", color = c.acc.orange, alt = { "WARNING", "XXX" } },
      PERF = { icon = " ", alt = { c.acc.blue, "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = " ", color = c.acc.green, alt = { "INFO" } },
      TEST = { icon = " ", color = c.acc.magenta, alt = { "TESTING", "PASSED", "FAILED" } },
    },
  },
}
