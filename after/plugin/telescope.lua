local builtin = require('telescope.builtin')

require("telescope").setup({
  defaults = {  -- Add `defaults` to ensure proper scope
    file_ignore_patterns = {
      "build/",      -- Ignore /build/
      "CMakeFiles/", -- Ignore /CMakeFiles/
      "%.cmake",      -- Ignore .cmake files
    },
  }
})

-- Example keymap to find files (with ignored files filtered out)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
