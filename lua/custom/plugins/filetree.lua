-- File: lua/custom/plugins/filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
      },
    },
  },
  config = function()
    require('neo-tree').setup {
      source_selector = {
        winbar = true,
        statusline = false,
      },
    }
    vim.keymap.set('n', '<C-n>', '<CMD>Neotree toggle<CR>', {})
  end,
}
