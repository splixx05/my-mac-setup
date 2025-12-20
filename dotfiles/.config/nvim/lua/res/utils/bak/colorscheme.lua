local M = {}

-- =========================================================
-- 🎨 PALETTE SECTION —
-- =========================================================
local c = require("res.utils.colors")

-- =========================================================
-- 🧠 Helper
-- =========================================================
local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- =========================================================
-- 🎨 HIGHLIGHTS SECTION —
-- =========================================================
local highlights = {
  -- UI / Editor
  Normal = { fg = c.fg.main, bg = c.bg.main },
  NormalNC = { fg = c.fg.main, bg = c.bg.main },
  Cursor = { fg = c.prim.main, bg = c.bg.main },
  CursorLine = { bg = c.grey.deep },
  CursorLineNr = { fg = c.fg.acc, bold = true },
  LineNr = { fg = c.grey.light },
  Visual = { bg = c.grey.deep },
  SignColumn = { bg = c.bg.main },
  ColorColumn = { bg = c.bg.sec },
  StatusLine = { fg = c.fg.main, bg = c.bg.sec },
  StatusLineNC = { fg = c.grey.light, bg = c.bg.sec },
  StatusLineTerm = { fg = c.fg.main, bg = c.bg.sec },
  StatusLineTermNC = { fg = c.grey.light, bg = c.bg.sec },
  VertSplit = { fg = c.bg.main, bg = c.bg.main },

  -- Comments
  Comment = { fg = c.grey.light, italic = true },
  Todo = { fg = c.prim.soft, bold = true },

  -- Constants
  Constant = { fg = c.yellow.main },
  String = { fg = c.fg.hi },
  Character = { fg = c.blue.main },
  Number = { fg = c.orange.main },
  Boolean = { fg = c.prim.deep },
  Float = { fg = c.prim.soft },

  -- Identifiers
  Identifier = { fg = c.prim.deep },
  Function = { fg = c.prim.main, bold = true },
  Builtin = { fg = c.prim.deep },
  Search = { fg = c.magenta.main, bg = "NONE" },
  IncSearch = { fg = c.prim.deep },
  MatchParen = { fg = c.green.main },

  -- Statements
  Statement = { fg = c.magenta.main },
  Conditional = { fg = c.magenta.main },
  Repeat = { fg = c.magenta.main },
  Label = { fg = c.prim.soft },
  Operator = { fg = c.violet.main },
  Keyword = { fg = c.violet.main, italic = true },
  Exception = { fg = c.red.main },

  -- Preprocessor
  PreProc = { fg = c.blue.main },
  Include = { fg = c.magenta.main },
  Define = { fg = c.blue.main },
  Macro = { fg = c.blue.main },
  Error = { fg = c.red.main },
  NormalFloat = { fg = c.prim.main, bg = "NONE" },
  Floatborder = { fg = c.prim.main, bg = "NONE" },

  -- Types
  Type = { fg = c.violet.main },
  StorageClass = { fg = c.blue.main },
  Structure = { fg = c.cyan.main },
  Typedef = { fg = c.red.main },

  -- Specials
  Special = { fg = c.prim.deep },
  SpecialChar = { fg = c.prim.soft },
  Tag = { fg = c.magenta.main },
  Delimiter = { fg = c.grey.light },
  SpecialComment = { fg = c.fg.acc },
  Debug = { fg = c.red.main },

  -- Diagnostics
  DiagnosticError = { fg = c.red.main },
  DiagnosticWarn = { fg = c.orange.main },
  DiagnosticInfo = { fg = c.blue.main },
  DiagnosticHint = { fg = c.cyan.main },

  -- Diff
  DiffAdd = { bg = c.green.main },
  DiffDelete = { bg = c.red.main },
  DiffChange = { bg = c.blue.main },

  -- LSP
  LspReferenceText = { bg = c.bg.comp },
  LspReferenceRead = { bg = c.bg.comp },
  LspReferenceWrite = { bg = c.bg.comp },

  -- Treesitter ------------------------------

  -- Operators & Punctuation
  ["@number"] = { link = "Number" },
  ["@type"] = { link = "Type" },
  ["@type.builtin"] = { link = "Type" },
  ["@type.definition"] = { link = "Type" },
  ["@punctuation"] = { link = "Delimiter" },
  ["@operator"] = { link = "Operator" },
  ["@punctuation.delimiter"] = { link = "Delimiter" },
  ["@punctuation.bracket"] = { link = "Delimiter" },
  ["@punctuation.special"] = { link = "Delimiter" },

  -- Variables
  ["@variable.builtin"] = { fg = c.fg.acc },
  ["@variable"] = { fg = c.fg.main },

  -- Fields / Properties
  ["@field"] = { fg = c.prim.deep },
  ["@property"] = { fg = c.cyan.main },

  ["@function"] = { link = "Function" },
  ["@function.builtin"] = { link = "Builtin" },
  ["@string"] = { link = "String" },
  ["@string.escape"] = { fg = c.green.main },
}

-- =========================================================
-- 🚀 SETUP
-- =========================================================
function M.setup()
  for group, opts in pairs(highlights) do
    hi(group, opts)
  end
end

return M
