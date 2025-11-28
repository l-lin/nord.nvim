local vimwiki = {}

local c = require("nord.colors").palette

function vimwiki.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    VimwikiLink = { fg = c.aurora.green, bg = c.none },
    VimwikiHeaderChar = { fg = s.bg2, bg = c.none },
    VimwikiHR = { fg = c.aurora.yellow, bg = c.none },
    VimwikiList = { fg = s.func, bg = c.none },
    VimwikiTag = { fg = c.aurora.green, bg = c.none },
    VimwikiMarkers = { fg = s.keyword, bg = c.none },
    VimwikiHeader1 = { fg = s.keyword, bg = c.none, bold = true },
    VimwikiHeader2 = { fg = s.func, bg = c.none, bold = true },
    VimwikiHeader3 = { fg = s.type, bg = c.none, bold = true },
    VimwikiHeader4 = { fg = c.frost.polar_water, bg = c.none, bold = true },
    VimwikiHeader5 = { fg = s.bg2, bg = c.none, bold = true },
    VimwikiHeader6 = { fg = s.comment, bg = c.none, bold = true },
  }
end

return vimwiki
