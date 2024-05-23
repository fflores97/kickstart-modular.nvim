-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', '<cmd>Neotree reveal<CR>', desc = 'NeoTree reveal' },
    { '<Leader>e', '<cmd>Neotree toggle<CR>', desc = '[E]xplore files' },
    { '<Leader>be', '<cmd>Neotree buffers<CR>', desc = '[E]xplore buffers' },
    { '<Leader>ge', '<cmd>Neotree git_status<CR>', desc = '[E]xplore git' },
  },
  --
  opts = {
    close_if_last_window = true,
    source_selector = {
      winbar = true,
      statusline = true,
    },
    buffers = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
    },
    git_status = {
      window = {
        position = 'float',
      },
    },
    filesystem = {
      window = {
        position = 'right',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
