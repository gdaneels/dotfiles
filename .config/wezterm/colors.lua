local wezterm = require 'wezterm'

-- This is the module table that we will export
local module = {}

function module.apply_to_config(config)
  -- tab bar options
  config.use_fancy_tab_bar = false
  config.hide_tab_bar_if_only_one_tab = true

  config.window_decorations = "RESIZE"

  -- color scheme
  config.color_scheme = 'Catppuccin Frappe'

  -- window background opacity
  config.window_background_opacity = 1.0
end

-- return our module table
return module
