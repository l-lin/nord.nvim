local c = require("nord.colors").palette
local utils = require("nord.utils")

local base = {}

function base.highlights()
  local options = require("nord.config").options
  local s = require("nord.colors").get_semantic()

  return {
    Bold = { bold = true },
    Boolean = { fg = s.keyword },
    Character = { fg = s.string },
    Conditional = { fg = s.keyword },
    Constant = { fg = s.constant },
    Comment = vim.tbl_extend("force", { fg = s.comment }, options.styles.comments),
    Debug = { fg = s.fg },
    Define = { fg = s.keyword },
    Delimiter = { fg = s.fg },
    Error = utils.make_error(c.aurora.red),
    Exception = { fg = s.keyword },
    Float = { fg = s.number },
    Function = vim.tbl_extend("force", { fg = s.func }, options.styles.functions),
    Identifier = vim.tbl_extend("force", { fg = s.variable }, options.styles.variables),
    Include = { fg = s.keyword },
    Italic = { italic = true },
    Keyword = vim.tbl_extend("force", { fg = s.keyword }, options.styles.keywords),
    Label = { fg = s.keyword },
    Macro = { link = "Define" },
    Number = { fg = s.number },
    Operator = { fg = s.operator },
    PreCondit = { link = "PreProc" },
    PreProc = { fg = s.keyword },
    Repeat = { fg = s.keyword },
    Special = { fg = s.fg },
    SpecialChar = { fg = c.aurora.yellow },
    SpecialComment = { fg = s.func },
    Statement = { fg = s.keyword },
    StorageClass = { fg = s.keyword },
    String = { fg = s.string },
    Structure = { fg = s.keyword },
    Tag = { fg = s.fg },
    Todo = { fg = c.aurora.yellow, bg = c.none },
    Type = { fg = s.type },
    Typedef = { fg = s.keyword },
    Underlined = { underline = true },

    htmlH1 = { fg = s.func, bold = true },
    htmlH2 = { fg = s.func },

    markdownHeadingDelimiter = { fg = s.type },
    markdownCode = { fg = s.type },
    markdownCodeBlock = { fg = s.fg },
    markdownH1 = { fg = s.func, bold = true },
    markdownH2 = { fg = s.func },
    markdownLinkText = { fg = s.func, underline = true },
    markdownBlockquote = { fg = s.type },
    markdownFootnote = { fg = s.type },
    markdownId = { fg = s.type },
    markdownIdDeclaration = { fg = s.type },
    markdownUrl = { fg = s.fg },

    debugPC = { bg = utils.darken(s.keyword, 0.3) },
    debugBreakpoint = { bg = utils.darken(c.frost.artic_ocean, 0.1), fg = s.keyword },
  }
end

return base
