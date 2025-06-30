return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- lädt das Theme als erstes, verhindert Flashes
    opts = {
      flavour = "mocha", -- hier stellst du die “mocha”-Variante ein
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha", -- Name der Colorscheme-Datei
    },
  },
}
