local cmp = {}

local c = require("nord.colors").palette

function cmp.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    CmpItemAbbrDeprecated = { fg = s.comment },
    CmpItemAbbrMatch = { fg = s.func, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = s.func, bold = true },
    CmpItemKind = { fg = s.keyword },
    CmpItemKindVariable = { fg = s.func },
    CmpItemKindInterface = { fg = s.func },
    CmpItemKindClass = { fg = s.func },
    CmpItemKindFunction = { fg = c.aurora.purple },
    CmpItemKindMethod = { fg = c.aurora.purple },
    CmpItemKindSnippet = { fg = s.success },
    CmpItemKindText = { fg = s.fg },

    CodeiumSuggestion = { fg = s.comment },

    BlinkCmpMenuBorder = { fg = s.border },
    BlinkCmpMenuSelection = { fg = c.none, bg = s.bg2 },
    BlinkCmpLabelDeprecated = { fg = s.comment },
    BlinkCmpLabelMatch = { fg = s.func, bold = true },
    BlinkCmpGhostText = { fg = s.comment },
    BlinkCmpDocBorder = { fg = s.border },
    BlinkCmpSignatureHelpBorder = { fg = s.border },
    BlinkCmpKindArray = { link = "@lsp.type.array" },
    BlinkCmpKindBoolean = { link = "@lsp.type.boolean" },
    BlinkCmpKindClass = { link = "@lsp.type.class" },
    BlinkCmpKindColor = { link = "@lsp.type.color" },
    BlinkCmpKindConstant = { link = "@lsp.type.constant" },
    BlinkCmpKindConstructor = { link = "@lsp.type.constructor" },
    BlinkCmpKindEnum = { link = "@lsp.type.enum" },
    BlinkCmpKindEnumMember = { link = "@lsp.type.enumMember" },
    BlinkCmpKindEvent = { link = "@lsp.type.event" },
    BlinkCmpKindField = { link = "@lsp.type.field" },
    BlinkCmpKindFile = { link = "@lsp.type.file" },
    BlinkCmpKindFolder = { link = "@lsp.type.folder" },
    BlinkCmpKindFunction = { link = "@lsp.type.function" },
    BlinkCmpKindInterface = { link = "@lsp.type.interface" },
    BlinkCmpKindKey = { link = "@lsp.type.key" },
    BlinkCmpKindKeyword = { link = "@lsp.type.keyword" },
    BlinkCmpKindMethod = { link = "@lsp.type.method" },
    BlinkCmpKindModule = { link = "@lsp.type.module" },
    BlinkCmpKindNamespace = { link = "@lsp.type.namespace" },
    BlinkCmpKindNull = { link = "@lsp.type.null" },
    BlinkCmpKindNumber = { link = "@lsp.type.number" },
    BlinkCmpKindObject = { link = "@lsp.type.object" },
    BlinkCmpKindOperator = { link = "@lsp.type.operator" },
    BlinkCmpKindPackage = { link = "@lsp.type.package" },
    BlinkCmpKindProperty = { link = "@lsp.type.property" },
    BlinkCmpKindReference = { link = "@lsp.type.reference" },
    BlinkCmpKindSnippet = { fg = s.success },
    BlinkCmpKindString = { link = "@lsp.type.string" },
    BlinkCmpKindStruct = { link = "@lsp.type.struct" },
    BlinkCmpKindText = { link = "@lsp.type.text" },
    BlinkCmpKindTypeParameter = { link = "@lsp.type.typeParameter" },
    BlinkCmpKindUnit = { link = "@lsp.type.unit" },
    BlinkCmpKindValue = { link = "@lsp.type.value" },
    BlinkCmpKindVariable = { link = "@lsp.type.variable" },

    BlinkCmpKindCodeium = { fg = s.success },
    BlinkCmpKindCopilot = { fg = s.success },
    BlinkCmpKind = { fg = s.keyword },
  }
end

return cmp
