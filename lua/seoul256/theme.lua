local seoul256 = require("seoul256.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = seoul256.purple }, -- int, long, char, etc.
		StorageClass =				{ fg = seoul256.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = seoul256.puple }, -- struct, union, enum, etc.
		Constant =					{ fg = seoul256.yellow }, -- any constant
		String =					{ fg = seoul256.string, bg = seoul256.none, style= 'italic' }, -- Any string
		Character =					{ fg = seoul256.orange }, -- any character constant: 'c', '\n'
		Number =					{ fg = seoul256.orange }, -- a number constant: 5
		Boolean =					{ fg = seoul256.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = seoul256.orange }, -- a floating point constant: 2.3e10
		Statement =					{ fg = seoul256.pink }, -- any statement
		Label =						{ fg = seoul256.purple }, -- case, default, etc.
		Operator =					{ fg = seoul256.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = seoul256.cyan }, -- try, catch, throw
		PreProc =					{ fg = seoul256.purple }, -- generic Preprocessor
		Include =					{ fg = seoul256.blue }, -- preprocessor #include
		Define =					{ fg = seoul256.pink }, -- preprocessor #define
		Macro =						{ fg = seoul256.cyan }, -- same as Define
		Typedef =					{ fg = seoul256.red }, -- A typedef
		PreCondit =					{ fg = seoul256.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = seoul256.red }, -- any special symbol
		SpecialChar =				{ fg = seoul256.pink }, -- special character in a constant
		Tag =						{ fg = seoul256.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = seoul256.cyan }, -- character that needs attention like , or .
		SpecialComment =			{ fg = seoul256.gray }, -- special things inside a comment
		Debug =						{ fg = seoul256.red }, -- debugging statements
		Underlined =				{ fg = seoul256.link, bg = seoul256.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = seoul256.disabled }, -- left blank, hidden
		Error =						{ fg = seoul256.error, bg = seoul256.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = seoul256.yellow, bg = seoul256.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = { fg = seoul256.link, style = "underline" },
        htmlH1 = { fg = seoul256.cyan, style = "bold" },
        htmlH2 = { fg = seoul256.red, style = "bold" },
        htmlH3 = { fg = seoul256.green, style = "bold" },
        htmlH4 = { fg = seoul256.yellow, style = "bold" },
        htmlH5 = { fg = seoul256.purple, style = "bold" },
        markdownH1 = { fg = seoul256.cyan, style = "bold" },
        markdownH2 = { fg = seoul256.red, style = "bold" },
        markdownH3 = { fg = seoul256.green, style = "bold" },
        markdownH1Delimiter = { fg = seoul256.cyan },
        markdownH2Delimiter = { fg = seoul256.red },
        markdownH3Delimiter = { fg = seoul256.green },
	}

	-- Options:

	-- Italic comments
	if vim.g.seoul256_italic_comments == true then
		syntax.Comment =		{fg = seoul256.green, bg = seoul256.none, style = 'italic'} -- italic comments
	else
		syntax.Comment =		{fg = seoul256.green} -- normal comments
	end

	-- Italic Keywords
	if vim.g.seoul256_italic_keywords == true then
		syntax.Conditional =		{fg = seoul256.purple, bg = seoul256.none, style = 'italic'} -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = seoul256.purple, bg = seoul256.none, style = 'italic'} -- italic for, do, while, etc.
		syntax.Repeat =				{fg = seoul256.purple, bg = seoul256.none, style = 'italic'} -- italic any other keyword
	else
		syntax.Conditional =		{fg = seoul256.purple} -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = seoul256.purple} -- normal for, do, while, etc.
		syntax.Repeat =				{fg = seoul256.purple} -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.seoul256_italic_functions == true then
		syntax.Function =		{fg = seoul256.blue, bg = seoul256.none, style = 'italic'} -- italic funtion names
	else
		syntax.Function =		{fg = seoul256.blue} -- normal function names
	end

	if vim.g.seoul256_italic_variables == true then
		Identifier =				{fg = seoul256.gray, bg = seoul256.none, style = 'italic'}; -- any variable name
    else
		Identifier =				{fg = seoul256.gray}; -- any variable name
    end

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			{ fg = seoul256.fg, bg = seoul256.float }, -- normal text and background color
		ColorColumn =			{ fg = seoul256.none, bg = seoul256.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = seoul256.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = seoul256.cursor, bg = seoul256.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = seoul256.cursor, bg = seoul256.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = seoul256.blue, bg = seoul256.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = seoul256.green, bg = seoul256.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = seoul256.orange, bg = seoul256.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = seoul256.red, bg = seoul256.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = seoul256.yellow, bg = seoul256.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		EndOfBuffer =			{ fg = seoul256.disabled },
		ErrorMsg =				{ fg = seoul256.none },
		Folded =				{ fg = seoul256.disabled, bg = seoul256.none, style = 'italic' },
		FoldColumn =			{ fg = seoul256.blue },
		IncSearch =				{ fg = seoul256.highlight, bg = seoul256.white, style = 'reverse' },
		LineNr =				{ fg = seoul256.line_numbers },
		CursorLineNr =			{ fg = seoul256.accent },
		MatchParen =			{ fg = seoul256.yellow, bg = seoul256.none, style = 'bold' },
		ModeMsg =				{ fg = seoul256.accent },
		MoreMsg =				{ fg = seoul256.accent },
		NonText =				{ fg = seoul256.disabled },
		Pmenu =					{ fg = seoul256.text, bg = seoul256.contrast },
		PmenuSel =				{ fg = seoul256.accent, bg = seoul256.active },
		PmenuSbar =				{ fg = seoul256.text, bg = seoul256.contrast },
		PmenuThumb =			{ fg = seoul256.fg, bg = seoul256.accent },
		Question =				{ fg = seoul256.green },
		QuickFixLine =			{ fg = seoul256.highlight, bg = seoul256.white, style = 'reverse' },
		qfLineNr =				{ fg = seoul256.highlight, bg = seoul256.white, style = 'reverse' },
		Search =				{ fg = seoul256.highlight, bg = seoul256.white, style = 'reverse' },
		SpecialKey =			{ fg = seoul256.purple },
		SpellBad =				{ fg = seoul256.red, bg = seoul256.none, style = 'italic,undercurl' },
		SpellCap =				{ fg = seoul256.blue, bg = seoul256.none, style = 'italic,undercurl' },
		SpellLocal =			{ fg = seoul256.cyan, bg = seoul256.none, style = 'italic,undercurl' },
		SpellRare =				{ fg = seoul256.purple, bg = seoul256.none, style = 'italic,undercurl' },
		StatusLine =			{ fg = seoul256.fg, bg = seoul256.contrast },
		StatusLineNC =  		{ fg = seoul256.text, bg = seoul256.disabled },
		StatusLineTerm =		{ fg = seoul256.fg, bg = seoul256.contrast },
		StatusLineTermNC =		{ fg = seoul256.text, bg = seoul256.disabled },
		TabLineFill =			{ fg = seoul256.fg },
		TablineSel =			{ fg = seoul256.bg, bg = seoul256.accent },
		Tabline =				{ fg = seoul256.fg },
		Title =					{ fg = seoul256.green, bg = seoul256.none, style = 'bold' },
		Visual =				{ fg = seoul256.none, bg = seoul256.selection },
		VisualNOS =				{ fg = seoul256.none, bg = seoul256.selection },
		WarningMsg =			{ fg = seoul256.yellow },
		WildMenu =				{ fg = seoul256.orange, bg = seoul256.none, style = 'bold' },
		CursorColumn =			{ fg = seoul256.none, bg = seoul256.active },
		CursorLine =			{ fg = seoul256.none, bg = seoul256.none },
		ToolbarLine =			{ fg = seoul256.fg, bg = seoul256.bg_alt },
		ToolbarButton =			{ fg = seoul256.fg, bg = seoul256.none, style = 'bold' },
		NormalMode =			{ fg = seoul256.accent, bg = seoul256.none, style = 'reverse' },
		InsertMode =			{ fg = seoul256.green, bg = seoul256.none, style = 'reverse' },
		ReplacelMode =			{ fg = seoul256.red, bg = seoul256.none, style = 'reverse' },
		VisualMode =			{ fg = seoul256.purple, bg = seoul256.none, style = 'reverse' },
		CommandMode =			{ fg = seoul256.gray, bg = seoul256.none, style = 'reverse' },
		Warnings =				{ fg = seoul256.yellow },

        healthError =           { fg = seoul256.error },
        healthSuccess =         { fg = seoul256.green },
        healthWarning =         { fg = seoul256.yellow },

        -- Dashboard
        DashboardShortCut =                     { fg = seoul256.blue },
        DashboardHeader =                       { fg = seoul256.red },
        DashboardCenter =                       { fg = seoul256.cyan },
        DashboardFooter =                       { fg = seoul256.green, style = "italic" },

	}

    -- Options:

    --Set transparent background
    if vim.g.seoul256_disable_background == true then
		editor.Normal =				{ fg = seoul256.fg, bg = seoul256.none } -- normal text and background color
		editor.SignColumn =			{ fg = seoul256.fg, bg = seoul256.none }
    else
		editor.Normal =				{ fg = seoul256.fg, bg = seoul256.bg } -- normal text and background color
		editor.SignColumn =			{ fg = seoul256.fg, bg = seoul256.bg }
    end

    -- Remove window split borders
    if vim.g.seoul256_borders == true then
		editor.VertSplit =				{ fg = seoul256.border }
    else
		editor.VertSplit =				{ fg = seoul256.bg }
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
        TSAnnotation =              { fg = seoul256.red },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =               { fg = seoul256.yellow },    -- (unstable) TODO: docs
        TSBoolean=                  { fg = seoul256.orange },    -- For booleans.
        TSCharacter=                { fg = seoul256.orange },    -- For characters.
        TSConstructor =             { fg = seoul256.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                { fg = seoul256.yellow },    -- For constants
        TSConstBuiltin =            { fg = seoul256.blue },    -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =              { fg = seoul256.blue },    -- For constants that are defined by macros: `NULL` in C.
        TSError =                   { fg = seoul256.error },    -- For syntax/parser errors.
        TSException =               { fg = seoul256.yellow },    -- For exception related keywords.
        TSField =                   { fg = seoul256.gray }, -- For fields.
        TSFloat =                   { fg = seoul256.red },    -- For floats.
        TSFuncMacro =               { fg = seoul256.blue },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                 { fg = seoul256.cyan },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                   { fg = seoul256.red }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =               { fg = seoul256.yellow },    -- For identifiers referring to modules and namespaces.
        --TSNone =                    { },    -- TODO: docs
        TSNumber =                  { fg = seoul256.orange },    -- For all numbers
        TSOperator =                { fg = seoul256.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =               { fg = seoul256.paleblue }, -- For parameters of a function.
        TSParameterReference=       { fg = seoul256.paleblue },    -- For references to parameters of a function.
        TSProperty =                { fg = seoul256.paleblue }, -- Same as `TSField`.
        TSPunctDelimiter =          { fg = seoul256.cyan }, -- For delimiters ie: `.`
        TSPunctBracket =            { fg = seoul256.cyan }, -- For brackets and parens.
        TSPunctSpecial =            { fg = seoul256.cyan }, -- For special punctutation that does not fall in the catagories before.
        TSString =                  { fg = seoul256.string },    -- For strings.
        TSStringRegex =             { fg = seoul256.blue }, -- For regexes.
        TSStringEscape =            { fg = seoul256.disabled }, -- For escape characters within a string.
        TSSymbol =                  { fg = seoul256.yellow },    -- For identifiers referring to symbols or atoms.
        TSType =                    { fg = seoul256.purple },    -- For types.
        TSTypeBuiltin =             { fg = seoul256.purple },    -- For builtin types.
        TSTag =                     { fg = seoul256.red },    -- Tags like html tag names.
        TSTagDelimiter =            { fg = seoul256.yellow },    -- Tag delimiter like `<` `>` `/`
        TSText =                    { fg = seoul256.text },    -- For strings considered text in a markup language.
        TSTextReference =           { fg = seoul256.yellow }, -- FIXME
        TSEmphasis =                { fg = seoul256.paleblue },    -- For text to be represented with emphasis.
        TSUnderline =               { fg = seoul256.fg, bg = seoul256.none, style = 'underline' },    -- For text to be represented with an underline.
        TSStrike =                  { },    -- For strikethrough text.
        TSTitle =                   { fg = seoul256.paleblue, bg = seoul256.none, style = 'bold' },    -- Text that is part of a title.
        TSLiteral =                 { fg = seoul256.fg },    -- Literal text.
        TSURI =                     { fg = seoul256.link },    -- Any URI like a link or email.
    }

    -- Options:

    -- Italic comments
    if vim.g.seoul256_italic_comments == true then
        treesitter.TSComment=                  { fg = seoul256.green , bg = seoul256.none, style = 'italic' }    -- For comment blocks.
    else
        treesitter.TSComment=                  { fg = seoul256.green }    -- For comment blocks.
    end

    if vim.g.seoul256_italic_keywords == true then
        treesitter.TSConditional =             { fg = seoul256.purple, style = 'italic' }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = seoul256.purple, style = 'italic' } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = seoul256.purple, style = 'italic' }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = seoul256.purple, style = 'italic' } -- For keywords used to define a fuction.
    else
        treesitter.TSConditional =             { fg = seoul256.purple }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = seoul256.purple } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = seoul256.purple }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = seoul256.purple } -- For keywords used to define a fuction.
    end

    if vim.g.seoul256_italic_functions == true then
        treesitter.TSFunction =                { fg = seoul256.blue, style = 'italic' }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = seoul256.blue, style = 'italic' }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = seoul256.cyan, style = 'italic' }    -- For builtin functions: `table.insert` in Lua.
    else
        treesitter.TSFunction =                { fg = seoul256.blue }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = seoul256.blue }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = seoul256.cyan }    -- For builtin functions: `table.insert` in Lua.
    end

    if vim.g.seoul256_italic_variables == true then
        treesitter.TSVariable =                { fg = seoul256.gray, style = 'italic' } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = seoul256.gray, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
    else
        treesitter.TSVariable =                { fg = seoul256.gray } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = seoul256.gray } -- Variable names that are defined by the languages, like `this` or `self`.
    end

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = seoul256.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = seoul256.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = seoul256.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = seoul256.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = seoul256.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = seoul256.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = seoul256.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = seoul256.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = seoul256.yellow}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = seoul256.yellow }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = seoul256.paleblue }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = seoul256.paleblue },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = seoul256.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = seoul256.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = seoul256.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = seoul256.purple  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = seoul256.purple  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = seoul256.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = seoul256.purple  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = seoul256.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { fg = seoul256.accent, bg = seoul256.highlight }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = seoul256.accent, bg = seoul256.highlight }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = seoul256.accent, bg = seoul256.highlight }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = seoul256.text },
        LspTroubleCount =                       { fg = seoul256.purple, bg = seoul256.active },
        LspTroubleNormal =                      { fg = seoul256.fg, bg = seoul256.sidebar },

        -- Diff
        diffAdded =                             { fg = seoul256.green },
        diffRemoved =                           { fg = seoul256.red },
        diffChanged =                           { fg = seoul256.yellow },
        diffOldFile =                           { fg = seoul256.yelow },
        diffNewFile =                           { fg = seoul256.orange },
        diffFile =                              { fg = seoul256.blue },
        diffLine =                              { fg = seoul256.green },
        diffIndexLine =                         { fg = seoul256.purple },

        -- Neogit
        NeogitBranch =                          { fg = seoul256.paleblue },
        NeogitRemote =                          { fg = seoul256.purple },
        NeogitHunkHeader =                      { fg = seoul256.fg, bg = seoul256.highlight },
        NeogitHunkHeaderHighlight =             { fg = seoul256.blue, bg = seoul256.contrast },
        NeogitDiffContextHighlight =            { fg = seoul256.text, bg = seoul256.contrast },
        NeogitDiffDeleteHighlight =             { fg = seoul256.red },
        NeogitDiffAddHighlight =                { fg = seoul256.green },

        -- GitGutter
        GitGutterAdd =                          { fg = seoul256.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = seoul256.yellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = seoul256.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = seoul256.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = seoul256.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = seoul256.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = seoul256.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = seoul256.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = seoul256.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = seoul256.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = seoul256.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = seoul256.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder =                 { fg = seoul256.cyan },
        TelescopeResultsBorder =                { fg = seoul256.purple },
        TelescopePreviewBorder =                { fg = seoul256.green },
        TelescopeSelectionCaret =               { fg = seoul256.purple },
        TelescopeSelection =                    { fg = seoul256.purple },
        TelescopeMatching =                     { fg = seoul256.cyan },
        TelescopeNormal =                       { fg = seoul256.fg, bg = seoul256.float },

        -- NvimTree
        NvimTreeRootFolder =                    { fg = seoul256.blue, style = "bold" },
        NvimTreeGitDirty =                      { fg = seoul256.yellow },
        NvimTreeGitNew =                        { fg = seoul256.green },
        NvimTreeImageFile =                     { fg = seoul256.yellow },
        NvimTreeExecFile =                      { fg = seoul256.green },
        NvimTreeSpecialFile =                   { fg = seoul256.purple , style = "underline" },
        NvimTreeFolderName=                     { fg = seoul256.paleblue },
        NvimTreeEmptyFolderName=                { fg = seoul256.disabled },
        NvimTreeFolderIcon=                     { fg = seoul256.accent },
        NvimTreeIndentMarker =                  { fg  = seoul256.disabled },
        LspDiagnosticsError =                   { fg = seoul256.error },
        LspDiagnosticsWarning =                 { fg = seoul256.yellow },
        LspDiagnosticsInformation =             { fg = seoul256.paleblue },
        LspDiagnosticsHint =                    { fg = seoul256.purple },

        -- WhichKey
        WhichKey =                              { fg = seoul256.accent , style = 'bold'},
        WhichKeyGroup =                         { fg = seoul256.text },
        WhichKeyDesc =                          { fg = seoul256.blue, style = 'italic' },
        WhichKeySeperator =                     { fg = seoul256.fg },
        WhichKeyFloating =                      { bg = seoul256.float },
        WhichKeyFloat =                         { bg = seoul256.float },

        -- LspSaga
        DiagnosticError =                       { fg = seoul256.error },
        DiagnosticWarning =                     { fg = seoul256.yellow },
        DiagnosticInformation =                 { fg = seoul256.paleblue },
        DiagnosticHint =                        { fg = seoul256.purple },
        DiagnosticTruncateLine =                { fg = seoul256.fg },
        LspFloatWinNormal =                     { bg = seoul256.contrast },
        LspFloatWinBorder =                     { fg = seoul256.purple },
        LspSagaBorderTitle =                    { fg = seoul256.cyan },
        LspSagaHoverBorder =                    { fg = seoul256.paleblue },
        LspSagaRenameBorder =                   { fg = seoul256.green },
        LspSagaDefPreviewBorder =               { fg = seoul256.green },
        LspSagaCodeActionBorder =               { fg = seoul256.blue },
        LspSagaFinderSelection =                { fg = seoul256.green },
        LspSagaCodeActionTitle =                { fg = seoul256.paleblue },
        LspSagaCodeActionContent =              { fg = seoul256.purple },
        LspSagaSignatureHelpBorder =            { fg = seoul256.pink },
        ReferencesCount =                       { fg = seoul256.purple },
        DefinitionCount =                       { fg = seoul256.purple },
        DefinitionIcon =                        { fg = seoul256.blue },
        ReferencesIcon =                        { fg = seoul256.blue },
        TargetWord =                            { fg = seoul256.cyan },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = seoul256.accent },
        BufferLineFill =                        { bg = seoul256.bg_alt },

        -- Sneak
        Sneak =                                 { fg = seoul256.bg, bg = seoul256.accent },
        SneakScope =                            { bg = seoul256.selection },

        -- Indent Blankline
        IndentBlanklineChar =                   { fg = seoul256.highlight },
        IndentBlanklineContextChar =            { fg = seoul256.disabled },
	
	 -- Nvim dap
         DapBreakpoint =                         { fg = seoul256.red },
         DapStopped =                            { fg = seoul256.green },
    }

    -- Options:

    -- Disable nvim-tree background
        if vim.g.seoul256_disable_background == true then
            plugins.NvimTreeNormal =                        { fg = seoul256.fg, bg = seoul256.none }
        else
            plugins.NvimTreeNormal =                        { fg = seoul256.fg, bg = seoul256.sidebar }
        end

    return plugins

end

return theme
