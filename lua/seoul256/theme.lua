local colors = require("seoul256/colors")

local M = {}

-- Syntax highlight groups
-- Type `:h syntax` for more informations
M.syntax = {
    Boolean = { fg = colors.orange },
    Character = { fg = colors.orange },
    Comment = { fg = colors.green },
    Conditional = { fg = colors.purple },
    Constant = { fg = colors.yellow },
    Debug = { fg = colors.red },
    Define = { fg = colors.pink },
    Delimiter = { fg = colors.cyan },
    Error = { fg = colors.error, bg = colors.none, style = "underline,bold" },
    Exception = { fg = colors.cyan },
    Float = { fg = colors.orange },
    Function = { fg = colors.blue },
    Identifier = { fg = colors.pink },
    Ignore = { fg = colors.disabled },
    Include = { fg = colors.blue },
    Keyword = { fg = colors.purple },
    Label = { fg = colors.purple },
    Macro = { fg = colors.cyan },
    Number = { fg = colors.orange },
    Operator = { fg = colors.cyan },
    PreCondit = { fg = colors.cyan },
    PreProc = { fg = colors.purple },
    Repeat = { fg = colors.purple },
    Special = { fg = colors.red },
    SpecialChar = { fg = colors.pink },
    SpecialComment = { fg = colors.gray },
    Statement = { fg = colors.pink },
    StorageClass = { fg = colors.cyan },
    String = { fg = colors.string, bg = colors.none, style = "italic" },
    Structure = { fg = colors.puple },
    Tag = { fg = colors.red },
    Todo = { fg = colors.yellow, bg = colors.none, style = "bold,italic" },
    Type = { fg = colors.purple },
    Typedef = { fg = colors.red },
    Underlined = { fg = colors.link, bg = colors.none, style = "underline" },
}

-- Editor highlight groups
-- Type `:h highlight-groups` for more informations
M.editor = {
    ColorColumn = { fg = colors.none, bg = colors.active },
    Conceal = { fg = colors.disabled },
    Cursor = { fg = colors.cursor, bg = colors.none, style = "reverse" },
    lCursor = {}, -- TODO
    CursorColumn = { fg = colors.none, bg = colors.active },
    CursorIM = { fg = colors.cursor, bg = colors.none, style = "reverse" },
    CursorLine = { fg = colors.none, bg = colors.none },
    CursorLineNr = { fg = colors.accent },
    DiffAdd = { fg = colors.green, bg = colors.none, style = "reverse" },
    DiffChange = { fg = colors.orange, bg = colors.none, style = "reverse" },
    DiffDelete = { fg = colors.red, bg = colors.none, style = "reverse" },
    DiffText = { fg = colors.yellow, bg = colors.none, style = "reverse" },
    Directory = { fg = colors.blue, bg = colors.none },
    EndOfBuffer = { fg = colors.disabled },
    ErrorMsg = { fg = colors.none },
    FoldColumn = { fg = colors.blue },
    Folded = { fg = colors.green, bg = colors.bg_alt, style = "italic" },
    IncSearch = { fg = colors.highlight, bg = colors.white, style = "reverse" },
    LineNr = { fg = colors.line_numbers },
    MatchParen = { fg = colors.yellow, bg = colors.none, style = "bold" },
    ModeMsg = { fg = colors.accent },
    MoreMsg = { fg = colors.accent },
    MsgArea = {}, -- TODO
    MsgSeparator = {}, -- TODO
    NonText = { fg = colors.disabled },
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.float },
    NormalNC = {}, -- TODO
    Pmenu = { fg = colors.text, bg = colors.contrast },
    PmenuSbar = { fg = colors.text, bg = colors.contrast },
    PmenuSel = { fg = colors.accent, bg = colors.active },
    PmenuThumb = { fg = colors.fg, bg = colors.accent },
    Question = { fg = colors.green },
    QuickFixLine = { fg = colors.highlight, bg = colors.white, style = "reverse" },
    Search = { fg = colors.highlight, bg = colors.white, style = "reverse" },
    SignColumn = { fg = colors.fg, bg = colors.bg },
    SpecialKey = { fg = colors.purple },
    SpellBad = { fg = colors.red, bg = colors.none, style = "undercurl,italic" },
    SpellCap = { fg = colors.blue, bg = colors.none, style = "undercurl,italic" },
    SpellLocal = { fg = colors.cyan, bg = colors.none, style = "undercurl,italic" },
    SpellRare = { fg = colors.purple, bg = colors.none, style = "undercurl,italic" },
    StatusLine = { fg = colors.fg, bg = colors.bg_alt },
    StatusLineNC = { fg = colors.text, bg = colors.disabled },
    Substitute = {}, -- TODO
    TabLineFill = { fg = colors.fg },
    Tabline = { fg = colors.fg },
    TablineSel = { fg = colors.bg, bg = colors.accent },
    TermCursor = {}, -- TODO
    TermCursorNC = {}, -- TODO
    Title = { fg = colors.green, bg = colors.none, style = "bold" },
    VertSplit = { fg = colors.bg },
    Visual = { fg = colors.none, bg = colors.selection },
    VisualNOS = { fg = colors.none, bg = colors.selection },
    WarningMsg = { fg = colors.yellow },
    Whitespace = {}, -- TODO
    WildMenu = { fg = colors.orange, bg = colors.none, style = "bold" },

    -- GUI only
    Menu = {},
    Scrollbar = {},
    Tooltip = {},
}

-- TreeSitter highlight groups
-- Type `:h nvim-treesitter-highlights` for more informations
M.treesitter = {
    TSAttribute = { fg = colors.yellow },
    TSBoolean = { fg = colors.orange },
    TSCharacter = { fg = colors.orange },
    TSComment = { fg = colors.green },
    TSConditional = { fg = colors.purple },
    TSConstBuiltin = { fg = colors.blue },
    TSConstMacro = { fg = colors.blue },
    TSConstant = { fg = colors.yellow },
    TSConstructor = { fg = colors.purple },
    TSDanger = {}, -- TODO
    TSEmphasis = { fg = colors.paleblue },
    TSEnvironment = {}, -- TODO
    TSEnvironmentName = {}, -- TODO
    TSError = { fg = colors.error },
    TSException = { fg = colors.yellow },
    TSField = { fg = colors.gray },
    TSFloat = { fg = colors.red },
    TSFuncBuiltin = { fg = colors.cyan },
    TSFuncMacro = { fg = colors.blue },
    TSFunction = { fg = colors.blue },
    TSInclude = { fg = colors.cyan },
    TSKeyword = { fg = colors.purple },
    TSKeywordFunction = { fg = colors.purple },
    TSKeywordOperator = {}, -- TODO
    TSKeywordReturn = {}, -- TODO
    TSLabel = { fg = colors.red },
    TSLiteral = { fg = colors.fg },
    TSMath = {}, -- TODO
    TSMethod = { fg = colors.blue },
    TSNamespace = { fg = colors.yellow },
    TSNone = {}, -- TODO
    TSNote = {}, -- TODO
    TSNumber = { fg = colors.orange },
    TSOperator = { fg = colors.cyan },
    TSParameter = { fg = colors.paleblue },
    TSParameterReference = { fg = colors.paleblue },
    TSProperty = { fg = colors.paleblue },
    TSPunctBracket = { fg = colors.cyan },
    TSPunctDelimiter = { fg = colors.cyan },
    TSPunctSpecial = { fg = colors.cyan },
    TSRepeat = { fg = colors.purple },
    TSStrike = {}, -- TODO
    TSString = { fg = colors.string },
    TSStringEscape = { fg = colors.disabled },
    TSStringRegex = { fg = colors.blue },
    TSStringSpecial = {}, -- TODO
    TSStrong = {}, -- TODO
    TSSymbol = { fg = colors.yellow },
    TSTag = { fg = colors.red },
    TSTagAttribute = {}, -- TODO
    TSTagDelimiter = { fg = colors.yellow },
    TSText = { fg = colors.text },
    TSTextReference = { fg = colors.yellow }, -- FIXME ???
    TSTitle = { fg = colors.paleblue, bg = colors.none, style = "bold" },
    TSType = { fg = colors.purple },
    TSTypeBuiltin = { fg = colors.purple },
    TSURI = { fg = colors.link },
    TSUnderline = { fg = colors.fg, bg = colors.none, style = "underline" },
    TSVariable = { fg = colors.gray },
    TSVariableBuiltin = { fg = colors.gray },
    TSWarning = {}, -- TODO
}

-- Lsp highlight groups
-- Type `:h lsp-highlight` for more informations
M.lsp = {
    LspCodeLens = {}, -- TODO
    LspDiagnosticsDefaultError = { fg = colors.error },
    LspDiagnosticsDefaultHint = { fg = colors.purple },
    LspDiagnosticsDefaultInformation = { fg = colors.paleblue },
    LspDiagnosticsDefaultWarning = { fg = colors.yellow },
    LspDiagnosticsFloatingError = { fg = colors.error },
    LspDiagnosticsFloatingHint = { fg = colors.purple },
    LspDiagnosticsFloatingInformation = { fg = colors.paleblue },
    LspDiagnosticsFloatingWarning = { fg = colors.yellow },
    LspDiagnosticsSignError = { fg = colors.error },
    LspDiagnosticsSignHint = { fg = colors.purple },
    LspDiagnosticsSignInformation = { fg = colors.paleblue },
    LspDiagnosticsSignWarning = { fg = colors.yellow },
    LspDiagnosticsUnderlineError = { style = "undercurl", sp = colors.error },
    LspDiagnosticsUnderlineHint = { style = "undercurl", sp = colors.paleblue },
    LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = colors.paleblue },
    LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = colors.yellow },
    LspDiagnosticsVirtualTextError = { fg = colors.error },
    LspDiagnosticsVirtualTextHint = { fg = colors.purple },
    LspDiagnosticsVirtualTextInformation = { fg = colors.paleblue },
    LspDiagnosticsVirtualTextWarning = { fg = colors.yellow },
    LspReferenceRead = { fg = colors.accent, bg = colors.highlight },
    LspReferenceText = { fg = colors.accent, bg = colors.highlight },
    LspReferenceWrite = { fg = colors.accent, bg = colors.highlight },
}

-- Plugins highlight groups
M.plugins = {
    LspTrouble = {
        LspTroubleText = { fg = colors.text },
        LspTroubleCount = { fg = colors.purple, bg = colors.active },
        LspTroubleNormal = { fg = colors.fg, bg = colors.sidebar },
    },
    Diff = {
        diffAdded = { fg = colors.green },
        diffRemoved = { fg = colors.red },
        diffChanged = { fg = colors.yellow },
        diffOldFile = { fg = colors.yellow },
        diffNewFile = { fg = colors.orange },
        diffFile = { fg = colors.blue },
        diffLine = { fg = colors.green },
        diffIndexLine = { fg = colors.purple },
    },

    Neogit = {
        NeogitBranch = { fg = colors.paleblue },
        NeogitRemote = { fg = colors.purple },
        NeogitHunkHeader = { fg = colors.fg, bg = colors.highlight },
        NeogitHunkHeaderHighlight = { fg = colors.blue, bg = colors.contrast },
        NeogitDiffContextHighlight = { fg = colors.text, bg = colors.contrast },
        NeogitDiffDeleteHighlight = { fg = colors.red },
        NeogitDiffAddHighlight = { fg = colors.green },
    },

    GitGutter = {
        GitGutterAdd = { fg = colors.green },
        GitGutterChange = { fg = colors.yellow },
        GitGutterDelete = { fg = colors.red },
    },

    GitSigns = {
        GitSignsAdd = { fg = colors.green },
        GitSignsAddNr = { fg = colors.green },
        GitSignsAddLn = { fg = colors.green },
        GitSignsChange = { fg = colors.yellow },
        GitSignsChangeNr = { fg = colors.yellow },
        GitSignsChangeLn = { fg = colors.yellow },
        GitSignsDelete = { fg = colors.red },
        GitSignsDeleteNr = { fg = colors.red },
        GitSignsDeleteLn = { fg = colors.red },
    },

    Telescope = {
        TelescopePromptBorder = { fg = colors.cyan },
        TelescopeResultsBorder = { fg = colors.purple },
        TelescopePreviewBorder = { fg = colors.green },
        TelescopeSelectionCaret = { fg = colors.purple },
        TelescopeSelection = { fg = colors.purple },
        TelescopeMatching = { fg = colors.cyan },
        TelescopeNormal = { fg = colors.fg, bg = colors.float },
    },

    NvimTree = {
        NvimTreeNormal = { fg = colors.fg, bg = colors.sidebar },
        NvimTreeRootFolder = { fg = colors.blue, style = "bold" },
        NvimTreeGitDirty = { fg = colors.yellow },
        NvimTreeGitNew = { fg = colors.green },
        NvimTreeImageFile = { fg = colors.yellow },
        NvimTreeExecFile = { fg = colors.green },
        NvimTreeSpecialFile = { fg = colors.purple, style = "underline" },
        NvimTreeFolderName = { fg = colors.paleblue },
        NvimTreeEmptyFolderName = { fg = colors.disabled },
        NvimTreeFolderIcon = { fg = colors.accent },
        NvimTreeIndentMarker = { fg = colors.disabled },

        -- TODO not sure this goes here
        LspDiagnosticsError = { fg = colors.error },
        LspDiagnosticsWarning = { fg = colors.yellow },
        LspDiagnosticsInformation = { fg = colors.paleblue },
        LspDiagnosticsHint = { fg = colors.purple },
    },

    WhichKey = {
        WhichKey = { fg = colors.accent, style = "bold" },
        WhichKeyGroup = { fg = colors.text },
        WhichKeyDesc = { fg = colors.blue, style = "italic" },
        WhichKeySeperator = { fg = colors.fg },
        WhichKeyFloating = { bg = colors.float },
        WhichKeyFloat = { bg = colors.float },
    },

    LspSaga = {
        DiagnosticError = { fg = colors.error },
        DiagnosticWarning = { fg = colors.yellow },
        DiagnosticInformation = { fg = colors.paleblue },
        DiagnosticHint = { fg = colors.purple },
        DiagnosticTruncateLine = { fg = colors.fg },
        LspFloatWinNormal = { bg = colors.bg },
        LspFloatWinBorder = { fg = colors.purple },
        LspSagaBorderTitle = { fg = colors.cyan },
        LspSagaHoverBorder = { fg = colors.paleblue },
        LspSagaRenameBorder = { fg = colors.green },
        LspSagaDefPreviewBorder = { fg = colors.green },
        LspSagaCodeActionBorder = { fg = colors.blue },
        LspSagaFinderSelection = { fg = colors.green },
        LspSagaCodeActionTitle = { fg = colors.paleblue },
        LspSagaCodeActionContent = { fg = colors.purple },
        LspSagaSignatureHelpBorder = { fg = colors.pink },
        ReferencesCount = { fg = colors.purple },
        DefinitionCount = { fg = colors.purple },
        DefinitionIcon = { fg = colors.blue },
        ReferencesIcon = { fg = colors.blue },
        TargetWord = { fg = colors.cyan },
    },

    BufferLine = {
        BufferLineIndicatorSelected = { fg = colors.accent },
        BufferLineFill = { bg = colors.bg_alt },
    },

    Sneak = {
        Sneak = { fg = colors.bg, bg = colors.accent },
        SneakScope = { bg = colors.selection },
    },

    IndentBlankline = {
        IndentBlanklineChar = { fg = colors.indentline },
        IndentBlanklineContextChar = { fg = colors.indentline },
    },

    NvimDap = {
        DapBreakpoint = { fg = colors.red },
        DapStopped = { fg = colors.green },
    },

    DashboardNvim = {
        DashboardCenter = { fg = colors.cyan },
        DashboardFooter = { fg = colors.green, style = "italic" },
        DashboardHeader = { fg = colors.red },
        DashboardShortCut = { fg = colors.blue },
    },
}

-- Options:

if vim.g.seoul256_disable_background == true then
    M.editor.Normal = { fg = colors.fg, bg = colors.none }
    M.editor.SignColumn = { fg = colors.fg, bg = colors.none }
    M.editor.NormalFloat = { fg = colors.fg, bg = colors.none }
    M.editor.Pmenu = { fg = colors.text, bg = colors.none }
    M.plugins.Telescope.TelescopeNormal = { fg = colors.fg, bg = colors.none }
end

if vim.g.seoul256_italic_comments == true then
    M.syntax.Comment = { fg = colors.green, bg = colors.none, style = "italic" }
    M.treesitter.TSComment = { fg = colors.green, bg = colors.none, style = "italic" }
end

if vim.g.seoul256_italic_keywords == true then
    M.syntax.Conditional = { fg = colors.purple, bg = colors.none, style = "italic" }
    M.syntax.Keyword = { fg = colors.purple, bg = colors.none, style = "italic" }
    M.syntax.Repeat = { fg = colors.purple, bg = colors.none, style = "italic" }
    M.treesitter.TSConditional = { fg = colors.purple, style = "italic" }
    M.treesitter.TSKeyword = { fg = colors.purple, style = "italic" }
    M.treesitter.TSRepeat = { fg = colors.purple, style = "italic" }
    M.treesitter.TSKeywordFunction = { fg = colors.purple, style = "italic" }
end

if vim.g.seoul256_italic_functions == true then
    M.syntax.Function = { fg = colors.blue, bg = colors.none, style = "italic" }
    M.treesitter.TSFunction = { fg = colors.blue, style = "italic" }
    M.treesitter.TSMethod = { fg = colors.blue, style = "italic" }
    M.treesitter.TSFuncBuiltin = { fg = colors.cyan, style = "italic" }
end

if vim.g.seoul256_italic_variables == true then
    M.syntax.Identifier = { fg = colors.pink, bg = colors.none, style = "italic" }
    M.treesitter.TSVariable = { fg = colors.gray, style = "italic" }
    M.treesitter.TSVariableBuiltin = { fg = colors.gray, style = "italic" }
end

if vim.g.seoul256_borders == true then
    M.editor.VertSplit = { fg = colors.border }
end

if vim.g.seoul256_hl_current_line == true then
    M.editor.CursorLine = { fg = colors.none, bg = colors.active }
end

return M
