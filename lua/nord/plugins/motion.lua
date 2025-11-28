local motion = {}

local c = require("nord.colors").palette

function motion.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    LeapMatch = { fg = s.bg, bg = s.type, bold = true, nocombine = true },
    LeapLabelPrimary = { fg = s.bg, bg = s.success, bold = true, nocombine = true },
    LeapLabelSecondary = { fg = s.bg, bg = c.aurora.purple, bold = true, nocombine = true },
    LeapLabelSelected = { fg = s.bg, bg = s.warning, bold = true, nocombine = true },
    LeapLabel = { bg = s.warning, fg = s.bg, bold = true },
    LeapBackdrop = { link = "Comment" },

    FlashMatch = { bg = s.bg1, fg = s.fg },
    FlashCurrent = { bg = s.bg2, fg = s.fg, underline = true },
    FlashLabel = { bg = s.warning, fg = s.bg, bold = true },
  }
end

return motion
