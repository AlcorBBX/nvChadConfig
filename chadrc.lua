---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula_light", "chadracula" },
  -- theme = "onedark",
  -- theme_toggle = { "onedark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    overriden_modules = nil,
  },

  nvdash = {
    load_on_startup = true,

    header = {
      [[                               __                 ]],
      [[     █████╗ ██╗     █████╗   █████╗ ██████╗       ]],
      [[    ██╔══██╗██║     ██╔══██╗██╔══██╗██╔══██╗      ]],
      [[    ███████║██║     ██║  ╚═╝██║  ██║██████╔╝      ]],
      [[    ██╔══██║██║     ██║  ██╗██║  ██║██╔══██╗      ]],
      [[    ██║  ██║███████╗╚█████╔╝╚█████╔╝██║  ██║      ]],
      [[    ╚═╝  ╚═╝╚══════╝ ╚════╝  ╚════╝ ╚═╝  ╚═╝      ]],
    },

    buttons = {
      { "  Find File", "󱁐  󰐕  󰐕 ", "Telescope find_files" },
      { "󰈚  Recent Files", "󱁐  󰐕  󰐕 󰭃", "Telescope oldfiles" },
      { "󱈄  Find Word", "󱁐  󰐕  󰐕 󰬄", "Telescope live_grep" },
      { "  Bookmarks", "󱁐  󰐕 󰫺 󰐕 a", "Telescope marks" },
      { "  Themes", "󱁐  󰐕 t 󰐕 h", "Telescope themes" },
      { "  Mappings", "󱁐  󰐕 c 󰐕 h", "NvCheatsheet" },
      { "  Config", "󱁐  󰐕 t 󰐕 c", "e $MYVIMRC" },
      { "  Projects", "󱁐  󰐕 t 󰐕 p", "Telescope projects" },
    },
  },

  transparency = true,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
