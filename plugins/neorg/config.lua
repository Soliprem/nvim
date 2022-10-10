require("neorg").setup {
  load = {
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          my_ws = "~/neorg",
        },
        autochdir = true,
        index = "index.norg",
      },
    },
    ["core.norg.concealer"] = {},
    ["core.export"] = {},
    ["core.export.markdown"] = {},
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp",
      },
    },
  },
}
