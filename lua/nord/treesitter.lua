local c = require("nord.colors").palette
local utils = require("nord.utils")

local treesitter = {}

function treesitter.highlights()
  local options = require("nord.config").options
  local s = require("nord.colors").get_semantic()

  return {
    -- Misc
    ["@comment"] = vim.tbl_extend("force", { fg = s.comment }, options.styles.comments), --  line and block comments
    ["@error"] = utils.make_error(c.aurora.red), --  syntax/parser errors
    -- ["@none"]     --  completely disable the highlight
    ["@keyword.directive"] = { fg = s.keyword }, --  various preprocessor directives & shebangs
    ["@preproc"] = { link = "@keyword.directive" }, -- @deprecated
    ["@keyword.directive.define"] = { fg = s.keyword }, --  preprocessor definition directives
    ["@define"] = { link = "@keyword.directive.define" }, -- @deprecated
    ["@operator"] = { fg = s.operator }, --  symbolic operators (e.g. `+` / `*`)

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = s.fg }, --  delimiters (e.g. `;` / `.` / `,`)
    ["@punctuation.bracket"] = { fg = s.func }, --  brackets (e.g. `()` / `{}` / `[]`)
    ["@markup.list"] = { fg = s.keyword }, --  special symbols (e.g. `{}` in string interpolation)
    ["@markup.list.unchecked"] = { fg = s.func }, --  unchecked list
    ["@markup.list.checked"] = { fg = s.type }, --  checked list
    ["@punctuation.special"] = { link = "@markup.list" }, -- @deprecated

    -- Literals
    ["@string"] = { fg = s.string }, --  string literals
    ["@string.regexp"] = { fg = s.warning }, --  regular expressions
    ["@string.regex"] = { link = "@string.regexp" }, -- @deprecated
    ["@string.escape"] = { fg = s.warning }, --  escape sequences
    ["@markup.link.label"] = { fg = s.warning }, --  other special strings (e.g. dates)
    ["@string.special"] = { link = "@markup.link.label" }, -- @deprecated
    ["@character"] = { fg = s.string }, --  character literals
    ["@character.special"] = { fg = s.warning }, --  special characters (e.g. wildcards)
    ["@boolean"] = { fg = s.keyword }, --  boolean literals
    ["@number"] = { fg = s.number }, --  numeric literals
    ["@number.float"] = { fg = s.number }, --  floating-point number literals
    ["@float"] = { link = "@number.float" }, -- @deprecated

    -- Functions
    ["@function"] = vim.tbl_extend("force", { fg = s.func }, options.styles.functions), --  function definitions
    ["@function.builtin"] = { fg = s.func }, --  built-in functions
    ["@function.call"] = { fg = s.func }, --  function calls
    ["@function.macro"] = { fg = s.keyword }, --  preprocessor macros
    ["@function.method"] = { fg = s.func }, --  method definitions
    ["@method"] = { link = "@function.method" }, -- @deprecated
    ["@function.method.call"] = { fg = s.func }, --  method calls
    ["@method.call"] = { link = "@function.method.call" }, -- @deprecated
    ["@constructor"] = { fg = s.func }, --  constructor calls and definitions
    ["@variable.parameter"] = { fg = s.func }, --  parameters of a function
    ["@parameter"] = { link = "@variable.parameter" }, -- @deprecated

    -- Keywords
    ["@keyword"] = vim.tbl_extend("force", { fg = s.keyword }, options.styles.keywords), --  various keywords
    ["@keyword.function"] = vim.tbl_extend("force", { fg = s.keyword }, options.styles.functions), --  keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.operator"] = vim.tbl_extend("force", { fg = s.keyword }, options.styles.keywords), --  operators that are English words (e.g. `and` / `or`)
    ["@keyword.return"] = vim.tbl_extend("force", { fg = s.keyword }, options.styles.keywords), --  keywords like `return` and `yield`
    ["@keyword.conditional"] = vim.tbl_extend("force", { fg = s.keyword }, options.styles.keywords), --  keywords related to conditionals (e.g. `if` / `else`)
    ["@conditional"] = { link = "@keyword.conditional" }, -- @deprecated
    ["@keyword.repeat"] = vim.tbl_extend("force", { fg = s.keyword }, options.styles.keywords), --  keywords related to loops (e.g. `for` / `while`)
    ["@repeat"] = { link = "@keyword.repeat" }, -- @deprecated
    ["@keyword.debug"] = vim.tbl_extend("force", { fg = s.fg }, options.styles.keywords), --  keywords related to debugging
    ["@debug"] = { link = "@keyword.debug" }, -- @deprecated
    ["@label"] = vim.tbl_extend("force", { fg = s.type }, options.styles.keywords), --  GOTO and other labels (e.g. `label:` in C)
    ["@keyword.import"] = vim.tbl_extend("force", { fg = s.keyword }, options.styles.keywords), --  keywords for including modules (e.g. `import` / `from` in Python)
    ["@include"] = { link = "@keyword.import" }, -- @deprecated
    ["@keyword.exception"] = vim.tbl_extend("force", { fg = s.keyword }, options.styles.keywords), --  keywords related to exceptions (e.g. `throw` / `catch`)
    ["@exception"] = { link = "@keyword.exception" }, -- @deprecated

    -- Types
    ["@type"] = { fg = s.type }, --  type or class definitions and annotations
    ["@type.builtin"] = { fg = s.keyword }, --  built-in types
    ["@type.definition"] = { fg = s.type }, --  type definitions (e.g. `typedef` in C)
    ["@type.qualifier"] = { fg = s.keyword }, --  type qualifiers (e.g. `const`)
    ["@keyword.storage"] = { fg = s.keyword }, --  visibility/life-time modifiers
    ["@storageclass"] = { link = "@keyword.storage" }, -- @deprecated
    ["@attribute"] = { fg = s.fg }, --  attribute annotations (e.g. Python decorators)
    ["@variable.member"] = { fg = s.fg }, --  object and struct fields
    ["@field"] = { link = "@variable.member" }, -- @deprecated
    ["@property"] = { fg = s.fg }, --  similar to `@field`

    -- Identifiers
    ["@variable"] = vim.tbl_extend("force", { fg = s.variable }, options.styles.variables), --  various variable names
    ["@variable.builtin"] = { fg = s.keyword }, --  built-in variable names (e.g. `this`)
    ["@constant"] = { fg = s.constant }, --  constant identifiers
    ["@constant.builtin"] = { fg = s.keyword }, --  built-in constant values
    ["@constant.macro"] = { fg = s.keyword }, --  constants defined by the preprocessor
    ["@module"] = { fg = s.fg }, --  modules or namespaces
    ["@namespace"] = { link = "@module" }, -- @deprecated
    ["@string.special.symbol"] = { fg = s.fg }, --  symbols or atoms
    ["@symbol"] = { link = "@string.special.symbol" }, -- @deprecated

    -- Text
    ["@text"] = { fg = s.fg }, -- @deprecated
    ["@markup.strong"] = { bold = true }, --  bold text
    ["@text.strong"] = { link = "@markup.strong" }, -- @deprecated
    ["@markup.italic"] = { italic = true }, --  text with emphasis
    ["@text.emphasis"] = { link = "@markup.italic" }, -- @deprecated
    ["@markup.underline"] = { underline = true }, --  underlined text
    ["@text.underline"] = { link = "@markup.underline" }, -- @deprecated
    ["@markup.strikethrough"] = { strikethrough = true }, --  strikethrough text
    ["@text.strike"] = { link = "@markup.strikethrough" }, -- @deprecated
    ["@markup.heading"] = { fg = s.func, bold = true }, --  text that is part of a title
    ["@markup.heading.1.markdown"] = { fg = s.keyword, bold = true }, --  markdown h1
    ["@markup.heading.2.markdown"] = { fg = c.aurora.purple, bold = true }, --  markdown h2
    ["@markup.heading.3.markdown"] = { fg = s.success, bold = true }, --  markdown h3
    ["@markup.heading.4.markdown"] = { fg = s.warning, bold = true }, --  markdown h4
    ["@markup.heading.5.markdown"] = { fg = c.aurora.orange, bold = true }, --  markdown h5
    ["@markup.heading.6.markdown"] = { fg = c.aurora.red, bold = true }, --  markdown h6
    ["@text.title"] = { link = "@markup.heading" }, -- @deprecated
    ["@markup.raw"] = { fg = s.type }, --  literal or verbatim text
    ["@text.literal"] = { link = "@markup.raw" }, -- @deprecated
    ["@markup.link.url"] = { fg = s.success, underline = true, sp = s.success }, --  URIs (e.g. hyperlinks)
    ["@text.uri"] = { link = "@markup.link.url" }, -- @deprecated
    ["@markup.link.label.markdown_inline"] = { fg = s.success }, --  markdown link
    ["@markup.math"] = { fg = s.type }, --  math environments (e.g. `$ ... $` in LaTeX)
    ["@text.math"] = { link = "@markup.math" }, -- @deprecated
    ["@markup.environment"] = { fg = s.type }, --  text environments of markup languages
    ["@text.environment"] = { link = "@markup.environment" }, -- @deprecated
    ["@markup.environment.name"] = { fg = s.keyword }, --  text indicating the type of an environment
    ["@text.environment.name"] = { link = "@markup.environment.name" }, -- @deprecated
    ["@markup.link"] = { fg = s.type }, --  text references, footnotes, citations, etc.
    ["@text.reference"] = { link = "@markup.link" }, -- @deprecated
    ["@comment.todo"] = { fg = s.keyword }, --  todo notes
    ["@text.todo"] = { link = "@comment.todo" }, -- @deprecated
    ["@comment.note"] = { fg = s.keyword }, --  info notes
    ["@text.note"] = { link = "@comment.note" }, -- @deprecated
    ["@comment.warning"] = { fg = s.warning }, --  warning notes
    ["@text.warning"] = { link = "@comment.warning" }, -- @deprecated
    ["@comment.error"] = { fg = s.error }, --  danger/error notes
    ["@text.danger"] = { link = "@comment.error" }, -- @deprecated
    ["@text.diff.add"] = { link = "DiffAdd" }, --  added text (for diff files)
    ["@text.diff.delete"] = { link = "DiffDelete" }, --  deleted text (for diff files)
    ["@diff.plus"] = { link = "DiffAdd" }, --  added text (for diff files)
    ["@diff.minus"] = { link = "DiffDelete" }, --  deleted text (for diff files)
    ["@diff.delta"] = { link = "DiffChange" },

    -- Tags
    ["@tag"] = { fg = s.keyword }, --  XML tag names
    ["@tag.attribute"] = { fg = s.type }, --  XML tag attributes
    ["@tag.delimiter"] = { fg = s.keyword }, --  XML tag delimiters

    -- Conceal
    ["@conceal"] = { fg = c.none, bg = c.none }, --  for captures that are only used for concealing

    -- Spell
    -- ["@spell"] = {}, --  for defining regions to be spellchecked
    -- ["@nospell"] = {}, --  for defining regions that should NOT be spellchecked

    -- Language specific
    ["@constant.git_rebase"] = { fg = s.type },
    ["@property.yaml"] = { fg = s.type },
    ["@text.phpdoc"] = { fg = s.comment },
    ["@attribute.phpdoc"] = { fg = s.keyword },
    ["@character.printf"] = { fg = s.warning },

    -- LSP Semantic Token Groups
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.field"] = { link = "@field" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { link = "@structure" },
    ["@lsp.type.typeParameter"] = { link = "@parameter" },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
  }
end

return treesitter
