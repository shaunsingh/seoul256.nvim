--                            M O O N L I G H T
--      _..._         _..._         _..._         _..._         _..._
--    .:::::::.     .::::. `.     .::::  `.     .::'   `.     .'     `.
--   :::::::::::   :::::::.  :   ::::::    :   :::       :   :         :
--   :::::::::::   ::::::::  :   ::::::    :   :::       :   :         :
--   `:::::::::'   `::::::' .'   `:::::   .'   `::.     .'   `.       .'
--     `':::''       `'::'-'       `'::.-'       `':..-'       `-...-'

-- Colorscheme name:    seoul256.nvim
-- Description:         Port of VSCode's seoul256 colorscheme for NeoVim
-- Author:              https://github.com/shaunsingh

local util = require('seoul256.util')

-- Load the theme
local set = function ()
    util.load()
end

return { set = set }
