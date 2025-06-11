local wezterm = require 'wezterm'

-- This is the module table that we will export
local module = {}

function module.apply_to_config(config)
  config.keys = {
  -- This will create a new split and run your default program inside it
    {
        key = '-',
        mods = 'LEADER',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = '|',
        mods = 'LEADER|SHIFT',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'j',
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection('Down'),
    },
    {
        key = 'k',
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection('Up'),
    },
    {
        key = 'h',
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection('Left'),
    },
    {
        key = 'l',
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection('Right'),
    },
    {
        key = 'x',
        mods = 'LEADER',
        action = wezterm.action.CloseCurrentPane{confirm = true},
    },
    {
        key = 'h',
        mods = 'LEADER|CTRL',
        action = wezterm.action.AdjustPaneSize { 'Left', 5 },
    },
    {
        key = 'j',
        mods = 'LEADER|CTRL',
        action = wezterm.action.AdjustPaneSize { 'Down', 5 },
    },
    {   key = 'k',
        mods = 'LEADER|CTRL',
        action = wezterm.action.AdjustPaneSize { 'Up', 5 }
    },
    {
      key = 'l',
      mods = 'LEADER|CTRL',
      action = wezterm.action.AdjustPaneSize { 'Right', 5 },
    },
   {
    key = 'z',
    mods = 'LEADER',
    action = wezterm.action.TogglePaneZoomState,
  },
    {
    key = 'n',
    mods = 'LEADER',
    action = wezterm.action.ActivateTabRelative(1),
  },
   {
    key = 'p',
    mods = 'LEADER',
    action = wezterm.action.ActivateTabRelative(-1),
  },
    { -- Remap full screen to ALT-m, so we can use ALT-Enter for copilot completion
        key = 'Enter',
        mods = 'ALT',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = 'm',
        mods = 'ALT',
        action = wezterm.action.ToggleFullScreen,
        desc = 'Toggle Fullscreen',
    },
}
end

-- return our module table
return module
