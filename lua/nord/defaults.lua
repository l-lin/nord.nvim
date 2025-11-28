local c = require("nord.colors").palette
local utils = require("nord.utils")

local defaluts = {}

function defaluts.highlights()
  local options = require("nord.config").options
  local global_bg = utils.make_global_bg()
  local s = require("nord.colors").get_semantic()

  return {
    ColorColumn = { bg = s.bg1 }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = c.none, bg = c.none }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = s.fg, bg = c.none, reverse = true }, -- the character under the cursor
    CursorIM = { fg = s.fg, bg = c.none, reverse = true }, -- like Cursor, but used when in IME mode
    CursorColumn = { bg = s.bg1 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = s.bg1 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = s.func }, -- directory names (and other special names in listings)
    EndOfBuffer = { fg = s.bg1 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = s.fg, bg = c.aurora.red }, -- error messages on the command line
    VertSplit = { fg = options.borders and s.border or s.bg, bg = c.none }, -- the column separating vertically split windows
    WinSeparator = {
      fg = options.borders and s.border or s.bg,
      bg = c.none,
    }, -- Separators between window splits.
    Folded = { fg = s.fg, bg = s.bg1 }, -- line used for closed folds
    FoldColumn = { fg = s.bg3, bg = global_bg }, -- 'foldcolumn'
    SignColumn = { fg = s.bg1, bg = utils.make_global_bg(true) }, -- column where |signs| are displayed
    -- Substitute = { link = "Search" }, -- |:substitute| replacement text highlighting
    LineNr = { fg = s.bg3, bg = c.none }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = s.fg, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { bg = s.bg3, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = s.fg }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = {}, -- Area for messages and cmdline
    MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = s.func }, -- |more-prompt|
    NonText = { fg = s.bg2 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = s.fg, bg = utils.make_global_bg(true) }, -- normal text
    NormalFloat = { fg = s.fg, bg = global_bg }, -- Normal text in floating windows.
    FloatBorder = { fg = s.bg3, bg = global_bg }, -- Borders of floating windows
    Pmenu = { fg = s.fg, bg = s.bg1 }, -- Popup menu: normal item.
    PmenuSel = { fg = s.fg, bg = s.bg2 }, -- Popup menu: selected item.
    PmenuSbar = { fg = s.fg, bg = s.bg2 }, -- Popup menu: scrollbar.
    PmenuThumb = { fg = s.func, bg = s.bg3 }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = s.fg }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { fg = s.fg, bg = c.none, reverse = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = options.search.theme == "vscode" and { fg = c.none, bg = utils.darken(s.func, 0.2) }
      or { fg = s.func, bg = c.none, reverse = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = options.search.theme == "vscode" and { fg = s.fg, bg = utils.darken(s.func, 0.5) }
      or { fg = s.bg, bg = s.func }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { link = "IncSearch" },
    SpecialKey = { fg = s.bg3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.aurora.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = s.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = s.fg, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { fg = s.fg, bg = global_bg, sp = s.fg, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = s.func, bg = s.bg2 }, -- status line of current window
    StatusLineNC = { fg = s.fg, bg = s.bg3 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = s.fg, bg = s.bg1 }, -- tab pages line, not active tab page label
    TabLineFill = { fg = s.fg, bg = s.bg1 }, -- tab pages line, where there are no labels
    TabLineSel = { fg = s.func, bg = s.bg3 }, -- tab pages line, active tab page label
    Title = { fg = s.fg, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { fg = c.none, bg = s.bg2 }, -- Visual mode selection
    VisualNOS = { fg = c.none, bg = s.bg2 }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = s.bg, bg = s.warning }, -- warning messages
    Whitespace = { fg = s.bg2 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { fg = s.func, bg = s.bg1 }, -- current match in 'wildmenu' completion
    qfLineNr = { fg = s.keyword },
    qfFileName = { fg = s.func },
    DiffAdd = { fg = s.fg, bg = utils.darken(c.aurora.green, 0.3), nocombine = true }, -- diff mode: Added line
    DiffChange = { }, --  diff mode: Changed line
    DiffDelete = { fg = s.fg, bg = utils.darken(c.aurora.red, 0.3), nocombine = true }, -- diff mode: Deleted line
    DiffText = { fg = s.fg, bg = utils.darken(c.aurora.green, 0.5), nocombine = true }, -- diff mode: Changed text within a changed line
    diffAdded = { link = "DiffAdd" },
    diffChanged = { link = "DiffChange" },
    diffRemoved = { link = "DiffDelete" },
    Added = { link = "DiffAdd" },
    Changed = { link = "DiffChange" },
    Removed = { link = "DiffDelete" },
    healthError = { fg = s.error },
    healthSuccess = { fg = s.success },
    healthWarning = { fg = s.warning },
    WinBar = { bg = s.bg },
    WinBarNC = { bg = s.bg },
  }
end

return defaluts
