<<<<<<< HEAD:lua/custom/plugins/neo-tree.lua
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  version = '*',
>>>>>>> 5e258d2 (Move plugin examples from README to optional plugin files (#831)):lua/kickstart/plugins/neo-tree.lua
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
<<<<<<< HEAD:lua/custom/plugins/neo-tree.lua
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    --
  },

  config = function()
    require('neo-tree').setup {
      filesystem = {
        hijack_netrw_behavior = 'open_default',
      },
    }
    vim.keymap.set('n', '<leader>tt', ':Neotree toggle<cr>', { desc = 'Neotree toggle' })
    vim.keymap.set('n', '<leader>tb', ':Neotree toggle show buffers right<cr>', { desc = 'Neotree buffers' })
    vim.keymap.set('n', '<leader>tg', ':Neotree float git_status<cr>', { desc = 'Neotree git status' })
  end,
=======
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
>>>>>>> 5e258d2 (Move plugin examples from README to optional plugin files (#831)):lua/kickstart/plugins/neo-tree.lua
}
