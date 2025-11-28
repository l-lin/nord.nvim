local utils = require("nord.utils")
local notify = {}

local c = require("nord.colors").palette

function notify.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    -- rcarriga/nvim-notify
    NotifyERRORBorder = { fg = utils.darken(s.error, 0.5, s.bg) },
    NotifyERRORIcon = { fg = s.error },
    NotifyERRORTitle = { fg = s.error },

    NotifyWARNBorder = { fg = utils.darken(s.warning, 0.5, s.bg) },
    NotifyWARNIcon = { fg = s.warning },
    NotifyWARNTitle = { fg = s.warning },

    NotifyINFOBorder = { fg = utils.darken(s.info, 0.5, s.bg) },
    NotifyINFOIcon = { fg = s.info },
    NotifyINFOTitle = { fg = s.info },

    NotifyDEBUGBorder = { fg = s.border },
    NotifyDEBUGIcon = { fg = s.fg },
    NotifyDEBUGTitle = { fg = s.fg },

    NotifyTRACEBorder = { fg = utils.darken(c.aurora.purple, 0.5, s.bg) },
    NotifyTRACEIcon = { fg = c.aurora.purple },
    NotifyTRACETitle = { fg = c.aurora.purple },

    NotifyBackground = { bg = utils.make_global_bg() },

    -- vigoux/notifier.nvim
    NotifierTitle = { fg = s.type, bold = true },
    NotifierContentDim = { fg = s.comment },
  }
end

return notify
