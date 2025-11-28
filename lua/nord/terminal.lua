local terminal = {}

local c = require("nord.colors").palette

function terminal.apply()
  local colors = require("nord.colors")
  local s = colors.get_semantic()

  if colors.is_light() then
    -- light theme terminal colors
    vim.g.terminal_color_0 = s.bg2 -- black (lighter)
    vim.g.terminal_color_8 = s.bg3 -- bright black
    vim.g.terminal_color_7 = s.fg_dim -- white
    vim.g.terminal_color_15 = s.fg -- bright white
  else
    -- dark theme terminal colors
    vim.g.terminal_color_0 = c.polar_night.bright
    vim.g.terminal_color_8 = c.polar_night.brightest
    vim.g.terminal_color_7 = c.snow_storm.brighter
    vim.g.terminal_color_15 = c.snow_storm.brightest
  end

  -- colors stay the same for both themes
  vim.g.terminal_color_1 = c.aurora.red
  vim.g.terminal_color_9 = c.aurora.red
  vim.g.terminal_color_2 = c.aurora.green
  vim.g.terminal_color_10 = c.aurora.green
  vim.g.terminal_color_3 = c.aurora.yellow
  vim.g.terminal_color_11 = c.aurora.yellow
  vim.g.terminal_color_4 = c.frost.artic_water
  vim.g.terminal_color_12 = c.frost.artic_water
  vim.g.terminal_color_5 = c.aurora.purple
  vim.g.terminal_color_13 = c.aurora.purple
  vim.g.terminal_color_6 = c.frost.ice
  vim.g.terminal_color_14 = c.frost.polar_water
end

function terminal.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    TermCursor = { fg = s.fg, bg = c.none, reverse = true }, -- cursor in a focused terminal
    TermCursorNC = { fg = s.bg3, bg = c.none, reverse = true }, -- cursor in an unfocused terminal
  }
end

return terminal
