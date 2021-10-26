local seoul256 = require('seoul256.theme')
local M = {}

-- Go trough the table and highlight the group with the color values
local function highlight(group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or ""

    local cmd = table.concat({"highlight", group, bg, fg, style, sp}, " ")
    vim.api.nvim_command(cmd)

    if color.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

-- Only define seoul256 if it's the active colorshceme
function M.onColorScheme()
  if vim.g.colors_name ~= "seoul256" then
    vim.cmd [[autocmd! seoul256]]
    vim.cmd [[augroup! seoul256]]
  end
end

-- Change the background for the terminal, packer and qf windows
local function contrast()
    vim.cmd [[augroup seoul256]]
    vim.cmd [[  autocmd!]]
    vim.cmd [[  autocmd ColorScheme * lua require("seoul256.util").onColorScheme()]]
    vim.cmd [[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
    vim.cmd [[  autocmd FileType packer setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
    vim.cmd [[  autocmd FileType qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
    vim.cmd [[augroup end]]
end

-- Load the theme
function M.load()
    -- Set the theme environment
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "seoul256"

    -- Load plugins, treesitter and lsp async
    local async
    async = vim.loop.new_async(vim.schedule_wrap(function ()
        seoul256.loadTerminal()

        -- imort tables for plugins, treesitter and lsp
        local plugins = seoul256.loadPlugins()
        local treesitter = seoul256.loadTreeSitter()
        local lsp = seoul256.loadLSP()

        -- loop trough the plugins table and highlight every member
        for group, colors in pairs(plugins) do
            highlight(group, colors)
        end

        -- loop trough the treesitter table and highlight every member
        for group, colors in pairs(treesitter) do
            highlight(group, colors)
        end

        -- loop trough the lsp table and highlight every member
        for group, colors in pairs(lsp) do
            highlight(group, colors)
        end

        -- if contrast is enabled, apply it to sidebars and floating windows
        if vim.g.seoul256_contrast == true then
            contrast()
        end
        async:close()

    end))

    -- load the most importaint parts of the theme
    local editor = seoul256.loadEditor()
    local syntax = seoul256.loadSyntax()

    -- load editor highlights
    for group, colors in pairs(editor) do
        highlight(group, colors)
    end

    -- load syntax highlights
    for group, colors in pairs(syntax) do
        highlight(group, colors)
    end

    -- load the rest later ( lsp, treesitter, plugins )
    async:send()
end

return M
