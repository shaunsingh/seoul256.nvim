local seoul256 = require('seoul256.colors')

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

    local syntax = {
        -- Boolean literal
        Boolean = {fg = seoul256.orange},
        -- Character literal
        Character = {fg = seoul256.orange},
        -- Comments
        Comment = {fg = seoul256.green},
        -- Control flow keywords
        Conditional = {fg = seoul256.purple},
        -- Constants
        Constant = {fg = seoul256.yellow},
        -- Debugging statements
        Debug = {fg = seoul256.red},
        -- Preprocessor #define
        Define = {fg = seoul256.pink},
        -- Delimiters: e.g. `,` or `.`
        Delimiter = {fg = seoul256.cyan},
        -- Errors
        Error = {fg = seoul256.error, bg = seoul256.none, style = 'bold,underline'},
        -- Exception related keywords: e.g. `try` and `catch`
        Exception = {fg = seoul256.cyan},
        -- Floating point literal
        Float = {fg = seoul256.orange},
        -- Function names
        Function = {fg = seoul256.blue},
        -- Variable names
        Identifier = {fg = seoul256.pink},
        -- Left blank, hidden
        Ignore = {fg = seoul256.disabled},
        -- Preprocessor #include
        Include = {fg = seoul256.blue},
        -- Loop keywords
        Keyword = {fg = seoul256.purple},
        -- Case, default, etc.
        Label = {fg = seoul256.purple},
        -- C/C++ macros
        Macro = {fg = seoul256.cyan},
        -- Number literals
        Number = {fg = seoul256.orange},
        -- Operators: e.g. `sizeof`, `+`, `*`, etc.
        Operator = {fg = seoul256.cyan},
        -- Preprocessor #if, #else, #endif, etc.
        PreCondit = {fg = seoul256.cyan},
        -- Preprocessor generic
        PreProc = {fg = seoul256.purple},
        -- Any keyword that doesn't fit in the previous categories
        Repeat = {fg = seoul256.purple},
        -- Special symbols
        Special = {fg = seoul256.red},
        -- Special characters
        SpecialChar = {fg = seoul256.pink},
        -- Special comments
        SpecialComment = {fg = seoul256.gray},
        -- Statements
        Statement = {fg = seoul256.pink},
        -- Static, register, volatile, etc.
        StorageClass = {fg = seoul256.cyan},
        -- String
        String = {fg = seoul256.string, bg = seoul256.none, style= 'italic'},
        -- Structs, unions, enums, etc.
        Structure = {fg = seoul256.puple},
        -- Tags
        Tag = {fg = seoul256.red},
        -- Keywords TODO FIXME and XXX
        Todo = {fg = seoul256.yellow, bg = seoul256.none, style = 'bold,italic'},
        -- Types
        Type = {fg = seoul256.purple},
        -- Typedef
        Typedef = {fg = seoul256.red},
        -- Underlined text: e.g. HTML links
        Underlined = {fg = seoul256.link, bg = seoul256.none, style = 'underline'},

        htmlH1 = {fg = seoul256.cyan, style = "bold"},
        htmlH2 = {fg = seoul256.red, style = "bold"},
        htmlH3 = {fg = seoul256.green, style = "bold"},
        htmlH4 = {fg = seoul256.yellow, style = "bold"},
        htmlH5 = {fg = seoul256.purple, style = "bold"},
        htmlLink = {fg = seoul256.link, style = "underline"},
        markdownH1 = {fg = seoul256.cyan, style = "bold"},
        markdownH1Delimiter = {fg = seoul256.cyan},
        markdownH2 = {fg = seoul256.red, style = "bold"},
        markdownH2Delimiter = {fg = seoul256.red},
        markdownH3 = {fg = seoul256.green, style = "bold"},
        markdownH3Delimiter = {fg = seoul256.green},
    }

    -- Options:

    -- Italic comments
    if vim.g.seoul256_italic_comments == true then
        -- Comments
        syntax.Comment = {fg = seoul256.green, bg = seoul256.none, style = 'italic'}
    end

    -- Italic keywords
    if vim.g.seoul256_italic_keywords == true then
        -- Control flow keywords
        syntax.Conditional = {fg = seoul256.purple, bg = seoul256.none, style = 'italic'}
        -- Loop keywords
        syntax.Keyword = {fg = seoul256.purple, bg = seoul256.none, style = 'italic'}
        -- Any keyword that doesn't fit in the previous categories
        syntax.Repeat = {fg = seoul256.purple, bg = seoul256.none, style = 'italic'}
    end

    -- Italic function names
    if vim.g.seoul256_italic_functions == true then
        -- Function names
        syntax.Function = {fg = seoul256.blue, bg = seoul256.none, style = 'italic'}
    end

    -- Italic variable names
    if vim.g.seoul256_italic_variables == true then
        -- Variable names
        syntax.Identifier =	{fg = seoul256.pink, bg = seoul256.none, style = 'italic'}
    end

    return syntax
end


theme.loadEditor = function ()
    -- Editor highlight groups
    local editor = {
        --  Used for the columns set with 'colorcolumn'
        ColorColumn = {fg = seoul256.none, bg = seoul256.active},
        CommandMode = {fg = seoul256.gray, bg = seoul256.none, style = 'reverse'},
        -- Placeholder characters substituted for concealed text (see 'conceallevel')
        Conceal = {fg = seoul256.disabled},
        -- The character under the cursor
        Cursor = {fg = seoul256.cursor, bg = seoul256.none, style = 'reverse'},
        CursorColumn = {fg = seoul256.none, bg = seoul256.active},
        -- Like Cursor, but used when in IME mode
        CursorIM = {fg = seoul256.cursor, bg = seoul256.none, style = 'reverse'},
        CursorLine = {fg = seoul256.none, bg = seoul256.none},
        CursorLineNr = {fg = seoul256.accent},
        -- Diff mode: Added line
        DiffAdd = {fg = seoul256.green, bg = seoul256.none, style = 'reverse'},
        --  Diff mode: Changed line
        DiffChange = {fg = seoul256.orange, bg = seoul256.none, style = 'reverse'},
        -- Diff mode: Deleted line
        DiffDelete = {fg = seoul256.red, bg = seoul256.none, style = 'reverse'},
        -- Diff mode: Changed text within a changed line
        DiffText = {fg = seoul256.yellow, bg = seoul256.none, style = 'reverse'},
        -- Directory names (and other special names in listings)
        Directory = {fg = seoul256.blue, bg = seoul256.none},
        EndOfBuffer = {fg = seoul256.disabled},
        ErrorMsg = {fg = seoul256.none},
        FoldColumn = {fg = seoul256.blue},
        Folded = {fg = seoul256.green, bg = seoul256.bg_alt, style = 'italic'},
        IncSearch = {fg = seoul256.highlight, bg = seoul256.white, style = 'reverse'},
        InsertMode = {fg = seoul256.green, bg = seoul256.none, style = 'reverse'},
        LineNr = {fg = seoul256.line_numbers},
        MatchParen = {fg = seoul256.yellow, bg = seoul256.none, style = 'bold'},
        ModeMsg = {fg = seoul256.accent},
        MoreMsg = {fg = seoul256.accent},
        NonText = {fg = seoul256.disabled},
        Normal = {fg = seoul256.fg, bg = seoul256.bg},
        -- Normal text and background color
        NormalFloat = {fg = seoul256.fg, bg = seoul256.float},
        NormalMode = {fg = seoul256.accent, bg = seoul256.none, style = 'reverse'},
        Pmenu = {fg = seoul256.text, bg = seoul256.contrast},
        PmenuSbar = {fg = seoul256.text, bg = seoul256.contrast},
        PmenuSel = {fg = seoul256.accent, bg = seoul256.active},
        PmenuThumb = {fg = seoul256.fg, bg = seoul256.accent},
        Question = {fg = seoul256.green},
        QuickFixLine = {fg = seoul256.highlight, bg = seoul256.white, style = 'reverse'},
        ReplacelMode = {fg = seoul256.red, bg = seoul256.none, style = 'reverse'},
        Search = {fg = seoul256.highlight, bg = seoul256.white, style = 'reverse'},
        SignColumn = {fg = seoul256.fg, bg = seoul256.bg},
        SpecialKey = {fg = seoul256.purple},
        SpellBad = {fg = seoul256.red, bg = seoul256.none, style = 'italic,undercurl'},
        SpellCap = {fg = seoul256.blue, bg = seoul256.none, style = 'italic,undercurl'},
        SpellLocal = {fg = seoul256.cyan, bg = seoul256.none, style = 'italic,undercurl'},
        SpellRare = {fg = seoul256.purple, bg = seoul256.none, style = 'italic,undercurl'},
        StatusLine = {fg = seoul256.fg, bg = seoul256.bg_alt},
        StatusLineNC = {fg = seoul256.text, bg = seoul256.disabled},
        StatusLineTerm = {fg = seoul256.fg, bg = seoul256.bg_alt},
        StatusLineTermNC = {fg = seoul256.text, bg = seoul256.disabled},
        TabLineFill = {fg = seoul256.fg},
        Tabline = {fg = seoul256.fg},
        TablineSel = {fg = seoul256.bg, bg = seoul256.accent},
        Title = {fg = seoul256.green, bg = seoul256.none, style = 'bold'},
        ToolbarButton = {fg = seoul256.fg, bg = seoul256.none, style = 'bold'},
        ToolbarLine = {fg = seoul256.fg, bg = seoul256.bg_alt},
        VertSplit = {fg = seoul256.bg},
        Visual = {fg = seoul256.none, bg = seoul256.selection},
        VisualMode = {fg = seoul256.purple, bg = seoul256.none, style = 'reverse'},
        VisualNOS = {fg = seoul256.none, bg = seoul256.selection},
        WarningMsg = {fg = seoul256.yellow},
        Warnings = {fg = seoul256.yellow},
        WildMenu = {fg = seoul256.orange, bg = seoul256.none, style = 'bold'},
        qfLineNr = {fg = seoul256.highlight, bg = seoul256.white, style = 'reverse'},

        healthError = {fg = seoul256.error},
        healthSuccess = {fg = seoul256.green},
        healthWarning = {fg = seoul256.yellow},

        -- Dashboard
        DashboardCenter = {fg = seoul256.cyan},
        DashboardFooter = {fg = seoul256.green, style = "italic"},
        DashboardHeader = {fg = seoul256.red},
        DashboardShortCut = {fg = seoul256.blue},
    }

    -- Options:

    -- Remove window split borders
    if vim.g.seoul256_borders == true then
        editor.VertSplit = {fg = seoul256.border}
    end

    return editor
end

theme.loadTerminal = function ()

    vim.g.terminal_color_0 = seoul256.black
    vim.g.terminal_color_1 = seoul256.red
    vim.g.terminal_color_2 = seoul256.green
    vim.g.terminal_color_3 = seoul256.yellow
    vim.g.terminal_color_4 = seoul256.blue
    vim.g.terminal_color_5 = seoul256.purple
    vim.g.terminal_color_6 = seoul256.cyan
    vim.g.terminal_color_7 = seoul256.white
    vim.g.terminal_color_8 = seoul256.gray
    vim.g.terminal_color_9 = seoul256.red
    vim.g.terminal_color_10 = seoul256.green
    vim.g.terminal_color_11 = seoul256.yellow
    vim.g.terminal_color_12 = seoul256.blue
    vim.g.terminal_color_13 = seoul256.purple
    vim.g.terminal_color_14 = seoul256.cyan
    vim.g.terminal_color_15 = seoul256.white
end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        -- Annotations that can be attached to the code to denote some kind of meta information: e.g. C++/Dart attributes
        TSAnnotation = {fg = seoul256.red},
        -- (unstable) TODO: docs
        TSAttribute = {fg = seoul256.yellow},
        -- Booleans
        TSBoolean= {fg = seoul256.orange},
        -- Characters
        TSCharacter= {fg = seoul256.orange},
        -- Comments
        TSComment = {fg = seoul256.green},
        -- Keywords related to conditionals
        TSConditional = {fg = seoul256.purple},
        -- Constructor calls and definitions: `= {}` in Lua, and Java constructors
        TSConstructor = {fg = seoul256.purple},
        -- Constants
        TSConstant = {fg = seoul256.yellow},
        -- Constant that are built in the language: e.g. `nil` in Lua
        TSConstBuiltin = {fg = seoul256.blue},
        -- Constants that are defined by macros: e.g. `NULL` in C
        TSConstMacro = {fg = seoul256.blue},
        -- For syntax/parser errors
        TSError = {fg = seoul256.error},
        -- Exception related keywords
        TSException = {fg = seoul256.yellow},
        -- Fields
        TSField = {fg = seoul256.gray},
        -- Floats
        TSFloat = {fg = seoul256.red},
        -- Builtin functions: `table.insert` in Lua
        TSFuncBuiltin = {fg = seoul256.cyan},
        -- Macro defined fuctions (calls and definitions): e.g. each `macro_rules` in Rust
        TSFuncMacro = {fg = seoul256.blue},
        -- Fuction (calls and definitions)
        TSFunction = {fg = seoul256.blue},
        -- Includes: e.g. `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua
        TSInclude = {fg = seoul256.cyan},
        -- Keywords
        TSKeyword = {fg = seoul256.purple},
        -- Keywords used to define a fuction.
        TSKeywordFunction = {fg = seoul256.purple},
        -- Labels: e.g. `label:` in C and `:label:` in Lua
        TSLabel = {fg = seoul256.red},
        -- Method calls and definitions
        TSMethod = {fg = seoul256.blue},
        -- Identifiers referring to modules and namespaces
        TSNamespace = {fg = seoul256.yellow},
        -- TODO: docs
        --TSNone = {},
        -- Numbers
        TSNumber = {fg = seoul256.orange},
        -- Operators: e.g. `+`, but also `->` and `*` in C
        TSOperator = {fg = seoul256.cyan},
        -- Parameters of a function
        TSParameter = {fg = seoul256.paleblue},
        -- References to parameters of a function
        TSParameterReference = {fg = seoul256.paleblue},
        -- Same as `TSField`
        TSProperty = {fg = seoul256.paleblue},
        -- Delimiters: e.g. `.`
        TSPunctDelimiter = {fg = seoul256.cyan},
        -- Brackets and parenthesis
        TSPunctBracket = {fg = seoul256.cyan},
        -- Special punctutation that does not fall in the catagories before
        TSPunctSpecial = {fg = seoul256.cyan},
        -- Loop keywords
        TSRepeat = {fg = seoul256.purple},
        -- Strings
        TSString = {fg = seoul256.string},
        -- Regexes
        TSStringRegex = {fg = seoul256.blue},
        -- Escape characters within a string
        TSStringEscape = {fg = seoul256.disabled},
        -- Identifiers referring to symbols or atoms
        TSSymbol = {fg = seoul256.yellow},
        -- Types
        TSType = {fg = seoul256.purple},
        -- Builtin types
        TSTypeBuiltin = {fg = seoul256.purple},
        -- Tags: e.g. html tag names
        TSTag = {fg = seoul256.red},
        -- Tag delimiters: e.g. `<` `>` `/`
        TSTagDelimiter = {fg = seoul256.yellow},
        -- Strings considered text in a markup language
        TSText = {fg = seoul256.text},
        -- FIXME
        TSTextReference = {fg = seoul256.yellow},
        -- Text to be represented with emphasis
        TSEmphasis = {fg = seoul256.paleblue},
        -- Text to be represented with an underline
        TSUnderline = {fg = seoul256.fg, bg = seoul256.none, style = 'underline'},
        -- Any variable name that does not have another highlight
        TSVariable = {fg = seoul256.gray},
        -- Variable names that are defined by the languages, like `this` or `self`
        TSVariableBuiltin = {fg = seoul256.gray},
        -- Strikethrough text
        TSStrike = {},
        -- Text that is part of a title
        TSTitle = {fg = seoul256.paleblue, bg = seoul256.none, style = 'bold'},
        -- Literal text
        TSLiteral = {fg = seoul256.fg},
        -- Any URI like a link or email
        TSURI = {fg = seoul256.link},
    }

    -- Options:

    -- Italic comments
    if vim.g.seoul256_italic_comments == true then
        treesitter.TSComment = {fg = seoul256.green, bg = seoul256.none, style = 'italic'}
    end

    -- Italic keywords
    if vim.g.seoul256_italic_keywords == true then
        treesitter.TSConditional = {fg = seoul256.purple, style = 'italic'}
        treesitter.TSKeyword = {fg = seoul256.purple, style = 'italic'}
        treesitter.TSRepeat = {fg = seoul256.purple, style = 'italic'}
        treesitter.TSKeywordFunction = {fg = seoul256.purple, style = 'italic'}
    end

    -- Italic functions
    if vim.g.seoul256_italic_functions == true then
        treesitter.TSFunction = {fg = seoul256.blue, style = 'italic'}
        treesitter.TSMethod = {fg = seoul256.blue, style = 'italic'}
        treesitter.TSFuncBuiltin = {fg = seoul256.cyan, style = 'italic'}
    end

    -- Italic variables
    if vim.g.seoul256_italic_variables == true then
        treesitter.TSVariable = {fg = seoul256.gray, style = 'italic'}
        treesitter.TSVariableBuiltin = {fg = seoul256.gray, style = 'italic'}
    end

    return treesitter
end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        -- Used for "Error" diagnostic virtual text
        LspDiagnosticsDefaultError = {fg = seoul256.error},
        -- Used for "Error" diagnostic signs in sign column
        LspDiagnosticsSignError = {fg = seoul256.error},
        -- Used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingError = {fg = seoul256.error},
        -- Virtual text "Error"
        LspDiagnosticsVirtualTextError = {fg = seoul256.error},
        -- Used to underline "Error" diagnostics
        LspDiagnosticsUnderlineError = {style = 'undercurl', sp = seoul256.error},
        -- Used for "Warning" diagnostic signs in sign column
        LspDiagnosticsDefaultWarning = {fg = seoul256.yellow},
        -- Used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning = {fg = seoul256.yellow},
        -- Used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingWarning = {fg = seoul256.yellow},
        -- Virtual text "Warning"
        LspDiagnosticsVirtualTextWarning = {fg = seoul256.yellow},
        -- Used to underline "Warning" diagnostics
        LspDiagnosticsUnderlineWarning = {style = 'undercurl', sp = seoul256.yellow},
        -- Used for "Information" diagnostic virtual text
        LspDiagnosticsDefaultInformation = {fg = seoul256.paleblue},
        -- Used for "Information" diagnostic signs in sign column
        LspDiagnosticsSignInformation = {fg = seoul256.paleblue},
        -- Used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingInformation = {fg = seoul256.paleblue},
        -- Virtual text "Information"
        LspDiagnosticsVirtualTextInformation = {fg = seoul256.paleblue},
        -- Used to underline "Information" diagnostics
        LspDiagnosticsUnderlineInformation = {style = 'undercurl', sp = seoul256.paleblue},
        -- Used for "Hint" diagnostic virtual text
        LspDiagnosticsDefaultHint = {fg = seoul256.purple },
        -- Used for "Hint" diagnostic signs in sign column
        LspDiagnosticsSignHint = {fg = seoul256.purple },
        -- Used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsFloatingHint = {fg = seoul256.purple },
        -- Virtual text "Hint"
        LspDiagnosticsVirtualTextHint = {fg = seoul256.purple },
        -- Used to underline "Hint" diagnostics
        LspDiagnosticsUnderlineHint = {style = 'undercurl', sp = seoul256.paleblue},
        -- Used for highlighting "text" references
        LspReferenceText = {fg = seoul256.accent, bg = seoul256.highlight},
        -- Used for highlighting "read" references
        LspReferenceRead = {fg = seoul256.accent, bg = seoul256.highlight},
        -- Used for highlighting "write" references
        LspReferenceWrite = {fg = seoul256.accent, bg = seoul256.highlight},
    }

    return lsp
end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {
        -- LspTrouble
        LspTroubleText = {fg = seoul256.text},
        LspTroubleCount = {fg = seoul256.purple, bg = seoul256.active},
        LspTroubleNormal = {fg = seoul256.fg, bg = seoul256.sidebar},

        -- Diff
        diffAdded = {fg = seoul256.green},
        diffRemoved = {fg = seoul256.red},
        diffChanged = {fg = seoul256.yellow},
        diffOldFile = {fg = seoul256.yelow},
        diffNewFile = {fg = seoul256.orange},
        diffFile = {fg = seoul256.blue},
        diffLine = {fg = seoul256.green},
        diffIndexLine = {fg = seoul256.purple},

        -- Neogit
        NeogitBranch = {fg = seoul256.paleblue},
        NeogitRemote = {fg = seoul256.purple},
        NeogitHunkHeader = {fg = seoul256.fg, bg = seoul256.highlight},
        NeogitHunkHeaderHighlight = {fg = seoul256.blue, bg = seoul256.contrast},
        NeogitDiffContextHighlight = {fg = seoul256.text, bg = seoul256.contrast},
        NeogitDiffDeleteHighlight = {fg = seoul256.red},
        NeogitDiffAddHighlight = {fg = seoul256.green},

        -- GitGutter
        GitGutterAdd = {fg = seoul256.green},
        GitGutterChange = {fg = seoul256.yellow},
        GitGutterDelete = {fg = seoul256.red},

        -- GitSigns
        GitSignsAdd = {fg = seoul256.green},
        GitSignsAddNr = {fg = seoul256.green},
        GitSignsAddLn = {fg = seoul256.green},
        GitSignsChange = {fg = seoul256.yellow},
        GitSignsChangeNr = {fg = seoul256.yellow},
        GitSignsChangeLn = {fg = seoul256.yellow},
        GitSignsDelete = {fg = seoul256.red},
        GitSignsDeleteNr = {fg = seoul256.red},
        GitSignsDeleteLn = {fg = seoul256.red},

        -- Telescope
        TelescopePromptBorder = {fg = seoul256.cyan},
        TelescopeResultsBorder = {fg = seoul256.purple},
        TelescopePreviewBorder = {fg = seoul256.green},
        TelescopeSelectionCaret ={fg = seoul256.purple},
        TelescopeSelection = {fg = seoul256.purple},
        TelescopeMatching = {fg = seoul256.cyan},
        TelescopeNormal = {fg = seoul256.fg, bg = seoul256.float},

        -- NvimTree
        NvimTreeNormal = {fg = seoul256.fg, bg = seoul256.sidebar},
        NvimTreeRootFolder = {fg = seoul256.blue, style = "bold"},
        NvimTreeGitDirty = {fg = seoul256.yellow},
        NvimTreeGitNew = {fg = seoul256.green},
        NvimTreeImageFile = {fg = seoul256.yellow},
        NvimTreeExecFile = {fg = seoul256.green},
        NvimTreeSpecialFile = {fg = seoul256.purple, style = "underline"},
        NvimTreeFolderName = {fg = seoul256.paleblue},
        NvimTreeEmptyFolderName = {fg = seoul256.disabled},
        NvimTreeFolderIcon = {fg = seoul256.accent},
        NvimTreeIndentMarker = {fg  = seoul256.disabled},
        LspDiagnosticsError = {fg = seoul256.error},
        LspDiagnosticsWarning = {fg = seoul256.yellow},
        LspDiagnosticsInformation = {fg = seoul256.paleblue},
        LspDiagnosticsHint = {fg = seoul256.purple},

        -- WhichKey
        WhichKey = {fg = seoul256.accent, style = 'bold'},
        WhichKeyGroup = {fg = seoul256.text},
        WhichKeyDesc = {fg = seoul256.blue, style = 'italic'},
        WhichKeySeperator = {fg = seoul256.fg},
        WhichKeyFloating = {bg = seoul256.float},
        WhichKeyFloat = {bg = seoul256.float},

        -- LspSaga
        DiagnosticError = {fg = seoul256.error},
        DiagnosticWarning = {fg = seoul256.yellow},
        DiagnosticInformation = {fg = seoul256.paleblue},
        DiagnosticHint = {fg = seoul256.purple},
        DiagnosticTruncateLine = {fg = seoul256.fg},
        LspFloatWinNormal = {bg = seoul256.bg},
        LspFloatWinBorder = {fg = seoul256.purple},
        LspSagaBorderTitle = {fg = seoul256.cyan},
        LspSagaHoverBorder = {fg = seoul256.paleblue},
        LspSagaRenameBorder = {fg = seoul256.green},
        LspSagaDefPreviewBorder = {fg = seoul256.green},
        LspSagaCodeActionBorder = {fg = seoul256.blue},
        LspSagaFinderSelection = {fg = seoul256.green},
        LspSagaCodeActionTitle = {fg = seoul256.paleblue},
        LspSagaCodeActionContent = {fg = seoul256.purple},
        LspSagaSignatureHelpBorder = {fg = seoul256.pink},
        ReferencesCount = {fg = seoul256.purple},
        DefinitionCount = {fg = seoul256.purple},
        DefinitionIcon = {fg = seoul256.blue},
        ReferencesIcon = {fg = seoul256.blue},
        TargetWord = {fg = seoul256.cyan},

        -- BufferLine
        BufferLineIndicatorSelected = {fg = seoul256.accent},
        BufferLineFill = {bg = seoul256.bg_alt},

        -- Sneak
        Sneak = {fg = seoul256.bg, bg = seoul256.accent},
        SneakScope = {bg = seoul256.selection},

        -- Indent Blankline
        IndentBlanklineChar = {fg = seoul256.indentline},
        IndentBlanklineContextChar = {fg = seoul256.indentline},

        -- Nvim dap
        DapBreakpoint = {fg = seoul256.red},
        DapStopped = {fg = seoul256.green},
    }

    return plugins
end

return theme
