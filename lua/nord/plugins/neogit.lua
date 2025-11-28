local neogit = {}

local c = require("nord.colors").palette

function neogit.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    NeogitDiffAdd = { fg = s.success, bg = s.bg1 },
    NeogitDiffAddHighlight = { fg = s.success, bg = s.bg1 },
    NeogitDiffChange = { fg = s.warning, bg = s.bg1 },
    NeogitDiffDelete = { fg = s.error, bg = s.bg1 },
    NeogitDiffDeleteHighlight = { fg = s.error, bg = s.bg1 },
    NeogitDiffText = { fg = s.keyword, bg = s.bg1 },
    NeogitContextHighlight = { fg = s.keyword, bg = s.bg1 },
    NeogitDiffContextHighlight = { fg = s.keyword, bg = s.bg1 },
    NeogitHunkHeader = { fg = s.fg, bg = s.bg3 },
    NeogitDiffAddCursor = { fg = s.success, bg = s.bg },
    NeogitDiffDeleteCursor = { fg = s.error, bg = s.bg },
    NeogitDiffContext = { fg = s.keyword, bg = s.bg },
    NeogitDiffContextCursor = { fg = s.keyword, bg = s.bg },
  }
end

return neogit
