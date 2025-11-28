local picker = {}

local c = require("nord.colors").palette
local utils = require("nord.utils")

function picker.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    TelescopeBorder = { fg = s.bg2, bg = utils.make_global_bg(true) },
    TelescopeTitle = { fg = s.fg, bold = true },
    TelescopePromptCounter = { fg = s.bg2 },
    TelescopeMatching = { fg = s.type, bold = true },

    FzfLuaBorder = { fg = s.bg2, bg = utils.make_global_bg(true) },
    FzfLuaTitle = { fg = s.fg, bold = true },
    FzfLuaHeaderBind = { fg = s.type },
    FzfLuaHeaderText = { fg = s.keyword },
    FzfLuaPathColNr = { fg = s.type },
    FzfLuaPathLineNr = { fg = s.success },
    FzfLuaBufNr = { fg = s.warning },
    FzfLuaBufFlagCur = { fg = s.error },
    FzfLuaBufFlagAlt = { fg = s.type },
    FzfLuaTabTitle = { fg = s.func },
    FzfLuaTabMarker = { fg = s.warning },
    FzfLuaLiveSym = { fg = s.error },
    FzfLuaLivePrompt = { fg = s.warning },
  }
end

return picker
