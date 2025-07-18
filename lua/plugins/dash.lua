-- ~/.config/nvim/lua/plugins/dashboard.lua
return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      theme = "doom", -- z.B. "hyper", "doom", ...
      config = {
        header = {
          [[]],
          [[]],
          [[████████╗██╗   ██╗██████╗  ██████╗ ██████╗ ]],
          [[╚══██╔══╝╚██╗ ██╔╝██╔══██╗██╔═══██╗██╔══██╗]],
          [[   ██║    ╚████╔╝ ██████╔╝██║   ██║██████╔╝]],
          [[   ██║     ╚██╔╝  ██╔══██╗██║   ██║██╔══██╗]],
          [[   ██║      ██║   ██████╔╝╚██████╔╝██║  ██║]],
          [[   ╚═╝      ╚═╝   ╚═════╝  ╚═════╝ ╚═╝  ╚═╝]],
          [[]],
          [[]],
          [[]],
        },
        footer = { "Abfahrt & Abflug! 🚀" },
      },
    },
  },
}
