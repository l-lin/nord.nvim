local filetree = {}

local config = require("nord.config")
local utils = require("nord.utils")
local c = require("nord.colors").palette

function filetree.highlights()
  local global_bg = utils.make_global_bg()
  local s = require("nord.colors").get_semantic()

  return {
    -- NvimTree
    NvimTreeNormal = { fg = s.fg },
    NvimTreeWinSeparator = { fg = config.options.borders and s.border or c.none },
    NvimTreeNormalNC = { fg = s.fg },
    NvimTreeRootFolder = { fg = s.fg, bold = true },
    NvimTreeGitDirty = { fg = s.warning },
    NvimTreeGitNew = { fg = s.success },
    NvimTreeGitDeleted = { fg = s.error },
    NvimTreeGitIgnored = { fg = s.comment },
    NvimTreeSpecialFile = { fg = s.warning, underline = true },
    NvimTreeIndentMarker = { fg = s.keyword },
    NvimTreeImageFile = { fg = s.fg },
    NvimTreeSymlink = { fg = s.keyword },
    NvimTreeFolderIcon = { fg = s.keyword },
    NvimTreeOpenedFolderName = { fg = s.fg },

    NeoTreeDimText = { fg = s.bg3 },
    NeoTreeDirectoryIcon = { fg = s.keyword },
    NeoTreeDirectoryName = { fg = s.fg },
    NeoTreeDotfile = { fg = s.comment },
    NeoTreeFadeText1 = { fg = s.bg3 },
    NeoTreeFadeText2 = { fg = s.bg2 },
    NeoTreeFileIcon = { fg = s.fg },
    NeoTreeFileName = { fg = s.fg },
    NeoTreeGitUnstaged = { fg = c.aurora.orange, italic = true },
    NeoTreeGitUntracked = { fg = s.success, italic = true },
    NeoTreeGitConflict = { fg = s.error },
    NeoTreeIndentMarker = { fg = s.bg2 },
    NeoTreeMessage = { fg = s.bg3, italic = true },
    NeoTreeModified = { fg = s.warning },
    NeoTreeRootName = { fg = s.fg, bold = true },
    NeoTreeSymbolicLinkTarget = { fg = s.keyword },
    NeoTreeTabActive = { fg = s.fg, bg = s.bg2, bold = true },
    NeoTreeTabInactive = { fg = s.comment, bg = global_bg },
    NeoTreeTabSeparatorActive = { fg = s.bg2, bg = global_bg },
    NeoTreeTabSeparatorInactive = { fg = s.bg, bg = global_bg },
  }
end

return filetree
