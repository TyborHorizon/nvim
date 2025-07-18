return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    filters = {
      dotfiles = false, -- zeigt versteckte Dateien wie `.env`, `.gitignore` etc. an
    },
    git = {
      enable = true,
      ignore = false, -- zeigt auch `.gitignored` Dateien
    },
  },
}
