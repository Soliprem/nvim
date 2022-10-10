return {
  ft = "norg",
  after = "nvim-treesitter",
  run = ":Neorg sync-parsers",
  config = function() require "user.plugins.neorg.config" end,
  require = "nvim-lua/plenary.nvim",
}
