local dap = {}

local c = require("nord.colors").palette
local utils = require("nord.utils")

function dap.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    DapUIStop = { fg = s.error },
    DapUIType = { fg = c.aurora.purple },
    DapUIScope = { fg = s.func },
    DapUISource = { fg = c.aurora.purple },
    DapUIThread = { fg = s.success },
    DapUIRestart = { fg = s.success },
    DapUIStepOut = { fg = s.func },
    DapUIStepBack = { fg = s.func },
    DapUIStepInto = { fg = s.func },
    DapUIStepOver = { fg = s.func },
    DapUIPlayPause = { fg = s.success },
    DapUIDecoration = { fg = s.func },
    DapUILineNumber = { fg = s.func },
    DapUIFloatBorder = { fg = s.func },
    DapUIUnavailable = { fg = s.comment },
    DapUIWatchesEmpty = { fg = s.error },
    DapUIWatchesError = { fg = s.error },
    DapUIWatchesValue = { fg = s.success },
    DapUIStoppedThread = { fg = s.func },
    DapUIBreakpointsInfo = { fg = s.success },
    DapUIBreakpointsPath = { fg = s.func },
    DapUIBreakpointsDisabledLine = { fg = s.comment },
    DapUIModifiedValue = { fg = s.func, bold = true },
    DapUIBreakpointsCurrentLine = { fg = s.success, bold = true },
    DapUIWinSelect = { fg = s.func, bold = true },
    DapUIStopNC = { fg = utils.darken(s.error, 0.6), bg = utils.make_global_bg() },
    DapUIRestartNC = { fg = utils.darken(s.success, 0.6), bg = utils.make_global_bg() },
    DapUIStepOutNC = { fg = utils.darken(s.func, 0.6), bg = utils.make_global_bg() },
    DapUIStepBackNC = { fg = utils.darken(s.func, 0.6), bg = utils.make_global_bg() },
    DapUIStepIntoNC = { fg = utils.darken(s.func, 0.6), bg = utils.make_global_bg() },
    DapUIStepOverNC = { fg = utils.darken(s.func, 0.6), bg = utils.make_global_bg() },
    DapUIPlayPauseNC = { fg = utils.darken(s.success, 0.6), bg = utils.make_global_bg() },
    DapUIUnavailableNC = { fg = s.bg3, bg = utils.make_global_bg() },
    DapUIEndofBuffer = { fg = s.bg3, bg = utils.make_global_bg() },
  }
end

return dap
