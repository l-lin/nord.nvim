local c = require("nord.colors").palette
local s = require("nord.colors").get_semantic()
local utils = require("nord.utils")
local config = require("nord.config").options.styles

local nord = {}

nord.normal = {
  a = { fg = s.bg1, bg = s.type },
  b = { fg = s.fg, bg = s.bg1 },
  c = { fg = s.fg, bg = s.bg2 },
}

nord.insert = {
  a = { fg = s.bg1, bg = s.fg },
}

nord.visual = {
  a = { fg = s.bg1, bg = c.frost.polar_water },
}

nord.replace = {
  a = { fg = s.bg1, bg = c.aurora.yellow },
}

nord.command = {
  a = { fg = s.bg1, bg = c.aurora.purple },
}

nord.inactive = {
  a = { fg = s.fg, bg = utils.make_global_bg() },
  b = { fg = s.fg, bg = utils.make_global_bg() },
  c = { fg = s.fg, bg = s.bg1 },
}

if config.lualine_bold then
  for _, mode in pairs(nord) do
    mode.a.gui = "bold"
  end
end

return nord
