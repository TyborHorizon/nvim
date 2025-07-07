-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("telescope").setup({
  defaults = {
    file_ignore_patterns = {}, -- keine ignorierten Dateien
    hidden = true, -- versteckte Dateien anzeigen
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
})
