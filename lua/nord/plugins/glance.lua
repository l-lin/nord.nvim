local M = {}

local c = require("nord.colors").palette

function M.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    GlancePreviewNormal = { bg = s.bg },
    GlancePreviewBorderBottom = { fg = s.border, bg = s.bg },
    GlanceBorderTop = { link = "GlancePreviewBorderBottom" },
    GlancePreviewMatch = { bg = s.bg3 },
    GlancePreviewEndOfBuffer = { bg = s.bg },
    GlancePreviewCursorLine = { link = "CursorLine" },
    GlancePreviewSignColumn = { link = "SignColumn" },
    GlancePreviewLineNr = { link = "LineNr" },

    GlanceWinBarFilename = { fg = s.type, bg = s.bg2 },
    GlanceWinBarFilepath = { fg = s.fg, bg = s.bg2 },
    GlanceWinBarTitle = { fg = s.fg, bg = s.bg2 },

    GlanceListNormal = { bg = s.bg1 },
    GlanceListFilename = { fg = s.type },
    GlanceListBorderBottom = { link = "GlancePreviewBorderBottom" },
    GlanceListMatch = { bg = s.bg3 },
    GlanceListCursorLine = { bg = s.bg2 },
    GlanceListFilepath = { fg = s.comment },
    GlanceListCount = { fg = c.aurora.purple },
    GlanceFoldIcon = { fg = s.fg },
    GlanceListEndOfBuffer = { bg = s.bg1 },
    GlanceIndent = { fg = s.bg3 },
  }
end

function M.make_opts(options)
  return vim.tbl_deep_extend("force", {}, {
    border = {
      enable = true,
      top_char = "",
      bottom_char = "▔",
    },
  }, options or {})
end

return M
