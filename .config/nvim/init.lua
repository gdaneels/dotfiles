-- load general nvim configurations
require("config.config")

-- load plugin (specs) via nvim.lazy
require("config.lazy")

-- theme options has to be loaded after lazy plugins so theme colorscheme can be found
require("config.theme")

-- load plugin specific nvim configurations
require("config.plugins.nvim-tree")
require("config.plugins.telescope")
require("config.plugins.barbar")
require("config.plugins.lsp")
require("config.plugins.copilotchat")
