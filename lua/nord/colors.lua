local colors = {}

---@class Nord.Palette.PolarNight
---@field origin string nord 0
---@field bright string nord 1
---@field brighter string nord 2
---@field brightest string  nord 3
---@field light string out of palette

---@class Nord.Palette.SnowStorm
---@field origin string  nord 4
---@field brighter string nord 5
---@field brightest string  nord 6

---@class Nord.Palette.Frost
---@field polar_water string nord 7
---@field ice string nord 8
---@field artic_water string nord 9
---@field artic_ocean string nord 10

---@class Nord.Palette.Aurora
---@field red string nord 11
---@field orange string nord 12
---@field yellow string nord 13
---@field green string nord 14
---@field purple string nord 15

---@class Nord.Palette
---@field polar_night Nord.Palette.PolarNight
---@field snow_storm Nord.Palette.SnowStorm
---@field frost Nord.Palette.Frost
---@field aurora Nord.Palette.Aurora
---@field none string

-- Raw Nord palette (unchanged)
---@type Nord.Palette
local palette = {
  polar_night = {
    origin = "#2E3440", -- nord0
    bright = "#3B4252", -- nord1
    brighter = "#434C5E", -- nord2
    brightest = "#4C566A", -- nord3
    light = "#616E88", -- out of palette
  },
  snow_storm = {
    origin = "#D8DEE9", -- nord4
    brighter = "#E5E9F0", -- nord5
    brightest = "#ECEFF4", -- nord6
  },
  frost = {
    polar_water = "#8FBCBB", -- nord7
    ice = "#88C0D0", -- nord8
    artic_water = "#81A1C1", -- nord9
    artic_ocean = "#5E81AC", -- nord10
  },
  aurora = {
    red = "#BF616A", -- nord11
    orange = "#D08770", -- nord12
    yellow = "#EBCB8B", -- nord13
    green = "#A3BE8C", -- nord14
    purple = "#B48EAD", -- nord15
  },
  none = "NONE",
}

-- Light theme adjusted colors (for better contrast)
---@type Nord.Semantic
local light = {
  -- Syntax colors adjusted for light backgrounds
  fg = palette.polar_night.origin,
  fg_dim = palette.polar_night.brightest,
  fg_muted = "#6A737D", -- gray for comments
  bg = palette.snow_storm.brightest,
  bg1 = palette.snow_storm.brighter,
  bg2 = palette.snow_storm.origin,
  bg3 = "#C8CED9", -- slightly darker for contrast
  border = palette.snow_storm.origin,

  -- Adjusted syntax for readability on light bg
  keyword = palette.frost.artic_ocean,
  func = "#0D7579", -- teal (from zed-nord-theme)
  string = "#032F62", -- dark blue (from zed-nord-theme)
  comment = "#6A737D", -- muted gray
  variable = palette.polar_night.origin,
  constant = palette.polar_night.bright,
  type = "#0D7579", -- teal
  operator = palette.frost.artic_ocean,
  number = "#5E4A8A", -- darker purple for contrast

  -- Aurora colors adjusted for light bg
  warning = "#9A6700", -- darker yellow for readability
  error = palette.aurora.red,
  info = palette.frost.artic_ocean,
  hint = "#0D7579", -- teal
  success = "#2E6B30", -- darker green for readability
}

-- Dark theme colors
---@type Nord.Semantic
local dark = {
  fg = palette.snow_storm.origin,
  fg_dim = palette.snow_storm.origin,
  fg_muted = palette.polar_night.light,
  bg = palette.polar_night.origin,
  bg1 = palette.polar_night.bright,
  bg2 = palette.polar_night.brighter,
  bg3 = palette.polar_night.brightest,
  border = palette.polar_night.bright,

  -- Original syntax colors
  keyword = palette.frost.artic_water,
  func = palette.frost.ice,
  string = palette.aurora.green,
  comment = palette.polar_night.light,
  variable = palette.snow_storm.origin,
  constant = palette.snow_storm.origin,
  type = palette.frost.polar_water,
  operator = palette.frost.artic_water,
  number = palette.aurora.purple,

  -- Aurora colors
  warning = palette.aurora.yellow,
  error = palette.aurora.red,
  info = palette.frost.artic_water,
  hint = palette.frost.polar_water,
  success = palette.aurora.green,
}

---@class Nord.Semantic
---@field fg string main foreground
---@field fg_dim string dimmed foreground
---@field fg_muted string muted foreground (comments)
---@field bg string main background
---@field bg1 string elevated background
---@field bg2 string more elevated
---@field bg3 string most elevated
---@field border string border color
---@field keyword string keyword color
---@field func string function color
---@field string string string color
---@field comment string comment color
---@field variable string variable color
---@field constant string constant color
---@field type string type color
---@field operator string operator color
---@field number string number color
---@field warning string warning color
---@field error string error color
---@field info string info color
---@field hint string hint color
---@field success string success color

--- Get semantic colors based on vim.o.background
---@return Nord.Semantic
function colors.get_semantic()
  if vim.o.background == "light" then
    return light
  end
  return dark
end

--- Check if using light theme
---@return boolean
function colors.is_light()
  return vim.o.background == "light"
end

colors.palette = palette
colors.default_bg = palette.polar_night.origin

function colors.daltonize(severity)
  local daltonize = require("nord.utils.colorblind").daltonize

  for group, color in pairs(palette) do
    if type(color) == "table" then
      for sub_group, sub_color in pairs(color) do
        colors.palette[group][sub_group] = daltonize(sub_color, severity)
      end
    end
  end
end

return colors
