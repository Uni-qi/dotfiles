-- Theme:  darkforest
-- fork of: http://github.com/glepnir/zephyr-nvim
local darkforest = {
  base0      = '#1B2229';
  base1      = '#1c1f24';
  base2      = '#202328';
  base3      = '#23272e';
  base4      = '#3f444a';
  base5      = '#5B6268';
  base6      = '#828066';
  base7      = '#9ca0a4';
  base8      = '#b1b1b1';

  bg = '#0e0f0e';
  bg1 = '#504945';
  bg_popup = '#1c1e1c';
  bg_highlight  = '#0e0f0e';
  bg_visual = '#2c6656';

  fg = '#e0cb70';
  fg_alt  = '#ebdbb2';

  red = '#af3a1f';

  redwine = '#722132';
  orange = '#d88913';
  yellow = '#f0c674';

  light_green = '#447a4b';
  green = '#689d6a';
  dark_green = '#98be65';

  cyan = '#2c6656';
  blue = '#458588';
  violet = '#aa7080';
  magenta = '#b16286',
  teal = '#3ca896';
  grey = '#928374';
  brown = '#c78665';
  black = '#000000';

  bracket = '#d88913';
  currsor_bg = '#4f5b66';
  none = 'NONE';
}

function darkforest.terminal_color()
  vim.g.terminal_color_0 = darkforest.bg
  vim.g.terminal_color_1 = darkforest.red
  vim.g.terminal_color_2 = darkforest.green
  vim.g.terminal_color_3 = darkforest.yellow
  vim.g.terminal_color_4 = darkforest.blue
  vim.g.terminal_color_5 = darkforest.violet
  vim.g.terminal_color_6 = darkforest.cyan
  vim.g.terminal_color_7 = darkforest.bg1
  vim.g.terminal_color_8 = darkforest.brown
  vim.g.terminal_color_9 = darkforest.red
  vim.g.terminal_color_10 = darkforest.green
  vim.g.terminal_color_11 = darkforest.yellow
  vim.g.terminal_color_12 = darkforest.blue
  vim.g.terminal_color_13 = darkforest.violet
  vim.g.terminal_color_14 = darkforest.cyan
  vim.g.terminal_color_15 = darkforest.fg
end

function darkforest.highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
                             ' ' .. bg..' '..sp)
end


function darkforest.load_syntax()
  local syntax = {
    Normal = {fg = darkforest.fg,bg=darkforest.bg};
    Terminal = {fg = darkforest.fg,bg=darkforest.bg};
    SignColumn = {fg=darkforest.fg,bg=darkforest.bg};
    FoldColumn = {fg=darkforest.fg_alt,bg=darkforest.black};
    VertSplit = {fg=darkforest.black,bg=darkforest.bg};
    Folded = {fg=darkforest.grey,bg=darkforest.bg_highlight};
    EndOfBuffer = {fg=darkforest.bg,bg=darkforest.none};
    IncSearch = {fg=darkforest.bg1,bg=darkforest.orange,style=darkforest.none};
    Search = {fg=darkforest.bg,bg=darkforest.orange};
    ColorColumn = {fg=darkforest.none,bg=darkforest.bg_highlight};
    Conceal = {fg=darkforest.grey,bg=darkforest.none};
    Cursor = {fg=darkforest.none,bg=darkforest.none,style='reverse'};
    vCursor = {fg=darkforest.none,bg=darkforest.none,style='reverse'};
    iCursor = {fg=darkforest.none,bg=darkforest.none,style='reverse'};
    lCursor = {fg=darkforest.none,bg=darkforest.none,style='reverse'};
    CursorIM = {fg=darkforest.none,bg=darkforest.none,style='reverse'};
    CursorColumn = {fg=darkforest.none,bg=darkforest.bg_highlight};
    CursorLine = {fg=darkforest.none,bg=darkforest.bg_highlight};
    LineNr = {fg=darkforest.base4};
    CursorLineNr = {fg=darkforest.blue};
    DiffAdd = {fg=darkforest.black,bg=darkforest.dark_green};
    DiffChange = {fg=darkforest.black,bg=darkforest.yellow};
    DiffDelete = {fg=darkforest.black,bg=darkforest.red};
    DiffText = {fg=darkforest.black,bg=darkforest.fg};
    Directory = {fg=darkforest.bg1,bg=darkforest.none};
    ErrorMsg = {fg=darkforest.red,bg=darkforest.none,style='bold'};
    WarningMsg = {fg=darkforest.yellow,bg=darkforest.none,style='bold'};
    ModeMsg = {fg=darkforest.fg,bg=darkforest.none,style='bold'};
    MatchParen = {fg=darkforest.red,bg=darkforest.none};
    NonText = {fg=darkforest.bg1};
    Whitespace = {fg=darkforest.base4};
    SpecialKey = {fg=darkforest.bg1};
    Pmenu = {fg=darkforest.fg,bg=darkforest.bg_popup};
    PmenuSel = {fg=darkforest.base0,bg=darkforest.blue};
    PmenuSelBold = {fg=darkforest.base0,g=darkforest.blue};
    PmenuSbar = {fg=darkforest.none,bg=darkforest.base4};
    PmenuThumb = {fg=darkforest.violet,bg=darkforest.light_green};
    WildMenu = {fg=darkforest.fg,bg=darkforest.green};
    Question = {fg=darkforest.yellow};
    NormalFloat = {fg=darkforest.base8,bg=darkforest.bg_highlight};
    TabLineFill = {style=darkforest.none};
    TabLineSel = {bg=darkforest.blue};
    StatusLine = {fg=darkforest.base8,bg=darkforest.base0,style=darkforest.none};
    StatusLineNC = {fg=darkforest.grey,bg=darkforest.base0,style=darkforest.none};
    SpellBad = {fg=darkforest.red,bg=darkforest.none,style='undercurl'};
    SpellCap = {fg=darkforest.blue,bg=darkforest.none,style='undercurl'};
    SpellLocal = {fg=darkforest.cyan,bg=darkforest.none,style='undercurl'};
    SpellRare = {fg=darkforest.violet,bg=darkforest.none,style = 'undercurl'};
    Visual = {fg=darkforest.black,bg=darkforest.bg_visual};
    VisualNOS = {fg=darkforest.black,bg=darkforest.bg_visual};
    QuickFixLine = {fg=darkforest.violet,style='bold'};
    Debug = {fg=darkforest.orange};
    debugBreakpoint = {fg=darkforest.bg,bg=darkforest.red};

    Boolean = {fg=darkforest.orange};
    Number = {fg=darkforest.brown};
    Float = {fg=darkforest.brown};
    PreProc = {fg=darkforest.violet};
    PreCondit = {fg=darkforest.violet};
    Include = {fg=darkforest.violet};
    Define = {fg=darkforest.violet};
    Conditional = {fg=darkforest.magenta};
    Repeat = {fg=darkforest.magenta};
    Keyword = {fg=darkforest.green};
    Typedef = {fg=darkforest.red};
    Exception = {fg=darkforest.red};
    Statement = {fg=darkforest.red};
    Error = {fg=darkforest.red};
    StorageClass = {fg=darkforest.orange};
    Tag = {fg=darkforest.orange};
    Label = {fg=darkforest.orange};
    Structure = {fg=darkforest.orange};
    Operator = {fg=darkforest.redwine};
    Title = {fg=darkforest.orange,style='bold'};
    Special = {fg=darkforest.yellow};
    SpecialChar = {fg=darkforest.yellow};
    Type = {fg=darkforest.teal};
    Function = {fg=darkforest.yellow};
    String = {fg=darkforest.light_green};
    Character = {fg=darkforest.green};
    Constant = {fg=darkforest.cyan};
    Macro = {fg=darkforest.cyan};
    Identifier = {fg=darkforest.blue};

    Comment = {fg=darkforest.base6};
    SpecialComment = {fg=darkforest.grey};
    Todo = {fg=darkforest.violet};
    Delimiter = {fg=darkforest.fg};
    Ignore = {fg=darkforest.grey};
    Underlined = {fg=darkforest.none,style='underline'};

    DashboardShortCut = {fg=darkforest.magenta};
    DashboardHeader = {fg=darkforest.orange};
    DashboardCenter = {fg=darkforest.cyan};
    DashboardFooter = {fg=darkforest.yellow,style='bold'};
  }
  return syntax
end

function darkforest.load_plugin_syntax()
  local plugin_syntax = {
    TSFunction = {fg=darkforest.cyan};
    TSMethod = {fg=darkforest.cyan};
    TSKeywordFunction = {fg=darkforest.red};
    TSProperty = {fg=darkforest.yellow};
    TSType = {fg=darkforest.teal};
    TSPunctBracket = {fg=darkforest.bracket};

    vimCommentTitle = {fg=darkforest.grey,style='bold'};
    vimLet = {fg=darkforest.orange};
    vimVar = {fg=darkforest.cyan};
    vimFunction = {fg=darkforest.redwine};
    vimIsCommand = {fg=darkforest.fg};
    vimCommand = {fg=darkforest.red};
    vimNotFunc = {fg=darkforest.violet,style='bold'};
    vimUserFunc = {fg=darkforest.yellow,style='bold'};
    vimFuncName= {fg=darkforest.yellow,style='bold'};

    diffAdded = {fg = darkforest.dark_green};
    diffRemoved = {fg =darkforest.red};
    diffChanged = {fg = darkforest.blue};
    diffOldFile = {fg = darkforest.yellow};
    diffNewFile = {fg = darkforest.orange};
    diffFile    = {fg = darkforest.aqua};
    diffLine    = {fg = darkforest.grey};
    diffIndexLine = {fg = darkforest.violet};

    gitcommitSummary = {fg = darkforest.red};
    gitcommitUntracked = {fg = darkforest.grey};
    gitcommitDiscarded = {fg = darkforest.grey};
    gitcommitSelected = { fg=darkforest.grey};
    gitcommitUnmerged = { fg=darkforest.grey};
    gitcommitOnBranch = { fg=darkforest.grey};
    gitcommitArrow  = {fg = darkforest.grey};
    gitcommitFile  = {fg = darkforest.dark_green};

    VistaBracket = {fg=darkforest.grey};
    VistaChildrenNr = {fg=darkforest.orange};
    VistaKind = {fg=darkforest.purpl};
    VistaScope = {fg=darkforest.red};
    VistaScopeKind = {fg=darkforest.blue};
    VistaTag = {fg=darkforest.magenta,style='bold'};
    VistaPrefix = {fg=darkforest.grey};
    VistaColon = {fg=darkforest.magenta};
    VistaIcon = {fg=darkforest.yellow};
    VistaLineNr = {fg=darkforest.fg};

    GitGutterAdd = {fg=darkforest.dark_green};
    GitGutterChange = {fg=darkforest.blue};
    GitGutterDelete = {fg=darkforest.red};
    GitGutterChangeDelete = {fg=darkforest.violet};

    GitSignsAdd = {fg=darkforest.dark_green};
    GitSignsChange = {fg=darkforest.blue};
    GitSignsDelete = {fg=darkforest.red};

    SignifySignAdd = {fg=darkforest.dark_green};
    SignifySignChange = {fg=darkforest.blue};
    SignifySignDelete = {fg=darkforest.red};

    dbui_tables = {fg=darkforest.blue};

    LspDiagnosticsSignError = {fg=darkforest.red};
    LspDiagnosticsSignWarning = {fg=darkforest.yellow};
    LspDiagnosticsSignInformation = {fg=darkforest.blue};
    LspDiagnosticsSignHint = {fg=darkforest.cyan};

    LspDiagnosticsVirtualTextError = {fg=darkforest.red};
    LspDiagnosticsVirtualTextWarning= {fg=darkforest.yellow};
    LspDiagnosticsVirtualTextInformation = {fg=darkforest.blue};
    LspDiagnosticsVirtualTextHint = {fg=darkforest.cyan};

    LspDiagnosticsUnderlineError = {style="undercurl",sp=darkforest.red};
    LspDiagnosticsUnderlineWarning = {style="undercurl",sp=darkforest.yellow};
    LspDiagnosticsUnderlineInformation = {style="undercurl",sp=darkforest.blue};
    LspDiagnosticsUnderlineHint = {style="undercurl",sp=darkforest.cyan};

    CursorWord0 = {bg=darkforest.currsor_bg};
    CursorWord1 = {bg=darkforest.currsor_bg};

    NvimTreeFolderName = {fg=darkforest.magenta};
    NvimTreeRootFolder = {fg=darkforest.red,style='bold'};
    NvimTreeSpecialFile = {fg=darkforest.fg,bg=darkforest.none,style='NONE'};

    TelescopeBorder = {fg=darkforest.cyan};
    TelescopePromptBorder = {fg=darkforest.red};
    TelescopeMatching = {fg=darkforest.teal};
    TelescopeSelection = {fg=darkforest.yellow,bg=darkforest.bg_highlight,style= 'bold'};
    TelescopeSelectionCaret = {fg=darkforest.yellow};
    TelescopeMultiSelection = {fg=darkforest.teal};
  }
  return plugin_syntax
end

local async_load_plugin

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function ()
  darkforest.terminal_color()
  local syntax = darkforest.load_plugin_syntax()
  for group,colors in pairs(syntax) do
    darkforest.highlight(group,colors)
  end
  async_load_plugin:close()
end))

function darkforest.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'darkforest'
  local syntax = darkforest.load_syntax()
  for group,colors in pairs(syntax) do
    darkforest.highlight(group,colors)
  end
  async_load_plugin:send()
end
darkforest.colorscheme()

return darkforest
