-- Pull in the wezterm API
local wezterm = require 'wezterm'

local colors_module = require 'colors'
local fonts_module = require 'fonts'
local keys_module = require 'keys'

local config = {}

config.leader = 
{
    key = 'a',
    mods = 'CTRL',
    timeout_milliseconds = 1000,
}

colors_module.apply_to_config(config)
fonts_module.apply_to_config(config)
keys_module.apply_to_config(config)

return config
