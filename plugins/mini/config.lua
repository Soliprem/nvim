require("mini.bufremove").setup()
require("mini.jump").setup()
require("mini.surround").setup {
  custom_surroundings = nil,

  highlight_duration = 500,

  mappings = {
    add = "ma", -- Add surrounding in Normal and Visual modes
    delete = "md", -- Delete surrounding
    find = "mf", -- Find surrounding (to the right)
    find_left = "mF", -- Find surrounding (to the left)
    highlight = "mh", -- Highlight surrounding
    replace = "mr", -- Replace surrounding
    update_n_lines = "mn", -- Update `n_lines`
  },

  n_lines = 20,

  search_method = "cover",
}
local gen_spec = require("mini.ai").gen_spec
require("mini.ai").setup {
  custom_textobjects = {
    ["*"] = gen_spec.pair("*", "*", { type = "greedy" }),
    ["_"] = gen_spec.pair("_", "_", { type = "greedy" }),
    F = gen_spec.treesitter { a = "@function.outer", i = "@function.inner" },
    x = gen_spec.treesitter { a = "@class.outer", i = "@class.inner" },
  },
}
