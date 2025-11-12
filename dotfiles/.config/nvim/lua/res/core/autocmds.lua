-- // Set bashls for zsh
-- vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
--   pattern = "*.zsh",
--   callback = function()
--     vim.bo.filetype = "sh"
--   end,
-- })

-- vim.o.laststatus = 0   -- uncomment this line, if you want to disable statusline

-- // Set cursor style back to underline //
vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    io.write("\x1b[4 q")
  end,
})
