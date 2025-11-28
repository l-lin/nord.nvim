local utils = require("nord.utils")
local lsp = {}

local c = require("nord.colors").palette

function lsp.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    -- LspReferenceText = { bg = c.fg_gutter }, -- used for highlighting "text" references
    -- LspReferenceRead = { bg = c.fg_gutter }, -- used for highlighting "read" references
    -- LspReferenceWrite = { bg = c.fg_gutter }, -- used for highlighting "write" references

    DiagnosticOk = { fg = s.success }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticError = { fg = s.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = s.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = s.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = s.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticVirtualTextError = { bg = utils.darken(s.error, 0.1), fg = s.error }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { bg = utils.darken(s.warning, 0.1), fg = s.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { bg = utils.darken(s.info, 0.1), fg = s.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { bg = utils.darken(s.hint, 0.1), fg = s.hint }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError = { undercurl = true, sp = s.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { undercurl = true, sp = s.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { undercurl = true, sp = s.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { undercurl = true, sp = s.hint }, -- Used to underline "Hint" diagnostics

    LspCodeLens = { fg = s.bg3 },
    LspInlayHint = { fg = s.bg3 },

    -- ray-x/lsp_signature.nvim
    LspSignatureActiveParameter = { bg = s.bg2, bold = true },

    -- LspTrouble
    TroubleText = { fg = s.fg },
    TroubleCount = { fg = s.func, bg = s.bg3 },
    TroubleNormal = { fg = s.fg, bg = c.none },
    TroubleIndent = { fg = s.comment, bg = c.none },
    TroubleLocation = { fg = s.comment, bg = c.none },
  }
end

return lsp
