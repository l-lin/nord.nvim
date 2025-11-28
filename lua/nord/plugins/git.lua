local git = {}

local c = require("nord.colors").palette

function git.highlights()
  local s = require("nord.colors").get_semantic()

  return {
    -- airblade/vim-gitgutter
    GitGutterAdd = { fg = c.aurora.green },
    GitGutterChange = { fg = c.aurora.yellow },
    GitGutterDelete = { fg = c.aurora.red },

    -- lewis6991/gitsigns.nvim
    GitSignsAdd = { fg = c.aurora.green },
    GitSignsAddNr = { fg = c.aurora.green },
    GitSignsAddLn = { fg = c.aurora.green },
    GitSignsChange = { fg = c.aurora.yellow },
    GitSignsChangeNr = { fg = c.aurora.yellow },
    GitSignsChangeLn = { fg = c.aurora.yellow },
    GitSignsDelete = { fg = c.aurora.red },
    GitSignsDeleteNr = { fg = c.aurora.red },
    GitSignsDeleteLn = { fg = c.aurora.red },
    GitSignsCurrentLineBlame = { fg = s.comment },

    -- isakbm/gitgraph.nvim
    GitGraphHash = { fg = c.aurora.purple },
    GitGraphTimestamp = { fg = s.func },
    GitGraphAuthor = { fg = c.aurora.green },
    GitGraphBranchName = { fg = c.aurora.red },
    GitGraphBranchTag = { fg = c.aurora.yellow },
    GitGraphBranchMsg = { fg = s.fg },
    GitGraphBranch1 = { fg = c.frost.artic_ocean },
    GitGraphBranch2 = { fg = c.aurora.green },
    GitGraphBranch3 = { fg = c.aurora.red },
    GitGraphBranch4 = { fg = c.aurora.yellow },
    GitGraphBranch5 = { fg = s.func },
  }
end

return git
