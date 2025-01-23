return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
        sync_root_with_cwd = true,
        view = {
            adaptive_size = false,
            side = "left",
        },
        git = {
            enable = true,
            ignore = true,
            timeout = 500,
        },
    }
  end,
}
