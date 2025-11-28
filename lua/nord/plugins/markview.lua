local M = {}

local c = require("nord.colors").palette
local utils = require("nord.utils")

function M.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    MarkviewCode = { bg = s.bg1 },
    MarkviewInlineCode = { bg = s.bg1 },

    MarkviewHeading1 = { fg = c.aurora.green, bg = utils.darken(c.aurora.green, 0.1) },
    MarkviewHeading2 = { fg = c.aurora.yellow, bg = utils.darken(c.aurora.yellow, 0.1) },
    MarkviewHeading3 = { fg = c.aurora.purple, bg = utils.darken(c.aurora.purple, 0.1) },
    MarkviewHeading4 = { fg = s.type, bg = utils.darken(s.type, 0.1) },
    MarkviewHeading5 = { fg = s.func, bg = utils.darken(s.func, 0.1) },
    MarkviewHeading6 = { fg = c.frost.artic_ocean, bg = utils.darken(c.frost.artic_ocean, 0.1) },

    MarkviewHeading1Sign = { fg = c.aurora.green },
    MarkviewHeading2Sign = { fg = c.aurora.yellow },
    MarkviewHeading3Sign = { fg = c.aurora.purple },
    MarkviewHeading4Sign = { fg = s.type },
    MarkviewHeading5Sign = { fg = s.func },
    MarkviewHeading6Sign = { fg = c.frost.artic_ocean },
  }
end

return M
