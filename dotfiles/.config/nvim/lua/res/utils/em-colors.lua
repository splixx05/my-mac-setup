-- lua/res/plugins/colorscheme.lua
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local custom_highlights = require("res.utils.colorscheme")
      require("tokyonight").setup({
        style = "storm",
        transparent = true,
        on_highlights = function(hl, c)
          for group, opts in pairs(custom_highlights) do
            hl[group] = opts
          end
        end,
      })
      vim.cmd("colorscheme tokyonight")
    end,
  },
}
