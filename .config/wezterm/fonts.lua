local wezterm = require 'wezterm'

-- This is the module table that we will export
local module = {}

function module.apply_to_config(config)
  -- font options
  config.font = wezterm.font 'Fira Code'
  config.font_size = 13
end

-- return our module table
return module
