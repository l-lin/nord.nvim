local utils = require("nord.utils")
local config = require("nord.config").options.styles.bufferline

local bufferline = {}

local c = require("nord.colors").palette

function bufferline.highlights()
  local s = require("nord.colors").get_semantic()
  local current_hi = vim.tbl_extend("force", { bg = s.bg2 }, config.current)
  local global_bg = utils.make_global_bg()

  return {
    -- Barbar
    BufferTabpageFill = { bg = global_bg, fg = s.bg },
    BufferCurrent = current_hi,
    BufferCurrentIndex = current_hi,
    BufferCurrentMod = vim.tbl_extend("force", { bg = s.bg2, fg = c.aurora.yellow }, config.modified),
    BufferCurrentSign = vim.tbl_extend("force", current_hi, { fg = s.keyword }),
    BufferCurrentTarget = vim.tbl_extend("force", { bg = s.bg2, fg = c.aurora.red, bold = true }, config.current),
    BufferCurrentHINT = vim.tbl_extend("force", current_hi, { fg = s.keyword }),
    BufferCurrentINFO = vim.tbl_extend("force", current_hi, { fg = s.func }),
    BufferCurrentWARN = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
    BufferCurrentERROR = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
    BufferVisible = { bg = s.bg1 },
    BufferVisibleIndex = { bg = s.bg1 },
    BufferVisibleMod = vim.tbl_extend("force", { bg = s.bg1, fg = c.aurora.yellow }, config.modified),
    BufferVisibleSign = { bg = s.bg1, fg = s.keyword },
    BufferVisibleTarget = { bg = s.bg1, fg = c.aurora.red, bold = true },
    BufferVisibleHINT = { bg = s.bg1, fg = s.keyword },
    BufferVisibleINFO = { bg = s.bg1, fg = s.func },
    BufferVisibleWARN = { bg = s.bg1, fg = c.aurora.yellow },
    BufferVisibleERROR = { bg = s.bg1, fg = c.aurora.red },
    BufferInactive = { bg = global_bg, fg = s.comment },
    BufferInactiveIndex = { bg = global_bg, fg = s.comment },
    BufferInactiveMod = vim.tbl_extend(
      "force",
      { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.4) },
      config.modified
    ),
    BufferInactiveSign = { bg = global_bg, fg = s.bg },
    BufferInactiveTarget = { bg = global_bg, fg = c.aurora.red, bold = true },
    BufferInactiveHINT = { bg = global_bg, fg = utils.darken(s.keyword, 0.4) },
    BufferInactiveINFO = { bg = global_bg, fg = utils.darken(s.func, 0.4) },
    BufferInactiveWARN = { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.4) },
    BufferInactiveERROR = { bg = global_bg, fg = utils.darken(c.aurora.red, 0.4) },
    BufferTabpages = { bg = global_bg, fg = c.none },
    BufferTabpage = { bg = global_bg, fg = c.none },
  }
end

function bufferline.akinsho()
  local s = require("nord.colors").get_semantic()
  local current_hi = vim.tbl_extend("force", { bg = s.bg2, italic = false, bold = false }, config.current)
  local global_bg = utils.make_global_bg()

  return {
    fill = { bg = global_bg, fg = s.comment },
    background = { bg = global_bg, fg = s.comment },
    numbers = { bg = global_bg },
    close_button = { bg = global_bg },
    separator = { bg = global_bg, fg = s.bg },
    duplicate = { bg = global_bg },
    modified = vim.tbl_extend("force", { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.4) }, config.modified),
    pick = { bg = global_bg, bold = true, italic = false },
    diagnostic = { bg = global_bg },
    hint = { bg = global_bg, fg = utils.darken(s.keyword, 0.6) },
    hint_diagnostic = { bg = global_bg, fg = utils.darken(s.keyword, 0.6) },
    info = { bg = global_bg, fg = utils.darken(s.func, 0.6) },
    info_diagnostic = { bg = global_bg, fg = utils.darken(s.func, 0.6) },
    warning = { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.6) },
    warning_diagnostic = { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.6) },
    error_diagnostic = { bg = global_bg, fg = utils.darken(c.aurora.red, 0.6) },
    error = { bg = global_bg, fg = utils.darken(c.aurora.red, 0.6) },
    buffer_selected = current_hi,
    numbers_selected = current_hi,
    close_button_selected = current_hi,
    modified_selected = vim.tbl_extend("force", { bg = s.bg2, fg = c.aurora.yellow }, config.modified),
    separator_selected = { bg = s.bg2, fg = s.bg },
    duplicate_selected = current_hi,
    pick_selected = vim.tbl_extend("force", current_hi, { bold = true }),
    indicator_selected = { fg = s.keyword, bg = s.bg2 },
    indicator_visible = { fg = c.frost.artic_ocean, bg = s.bg1 },
    diagnostic_selected = current_hi,
    hint_selected = vim.tbl_extend("force", current_hi, { fg = s.keyword }),
    hint_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = s.keyword }),
    info_selected = vim.tbl_extend("force", current_hi, { fg = s.func }),
    info_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = s.func }),
    warning_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
    warning_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
    error_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
    error_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
    buffer_visible = { bg = s.bg1 },
    numbers_visible = { bg = s.bg1 },
    close_button_visible = { bg = s.bg1 },
    modified_visible = vim.tbl_extend("force", { bg = s.bg1, fg = c.aurora.yellow }, config.modified),
    separator_visible = { bg = global_bg, fg = s.bg },
    duplicate_visible = { bg = s.bg1 },
    pick_visible = { bg = s.bg1, bold = true, italic = false },
    diagnostic_visible = { bg = s.bg1 },
    hint_visible = { bg = s.bg1, fg = s.keyword },
    hint_diagnostic_visible = { bg = s.bg1, fg = s.keyword },
    info_visible = { bg = s.bg1, fg = s.func },
    info_diagnostic_visible = { bg = s.bg1, fg = s.func },
    warning_visible = { bg = s.bg1, fg = c.aurora.yellow },
    warning_diagnostic_visible = { bg = s.bg1, fg = c.aurora.yellow },
    error_visible = { bg = s.bg1, fg = c.aurora.red },
    error_diagnostic_visible = { bg = s.bg1, fg = c.aurora.red },
    tab = { fg = s.fg, bg = global_bg },
    tab_selected = { fg = s.fg, bg = s.bg2 },
    tab_separator = { fg = s.bg, bg = global_bg },
    tab_separator_selected = { fg = c.aurora.purple, bg = s.bg2 },
    tab_close = { fg = s.fg, bg = global_bg },
    trunc_marker = { bg = global_bg, fg = s.comment },
  }
end

return bufferline
