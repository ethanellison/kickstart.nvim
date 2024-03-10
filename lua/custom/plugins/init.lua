-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'windwp/nvim-autopairs',
    -- Optional dependency
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require('nvim-autopairs').setup {}
      -- If you want to automatically add `(` after selecting a function or method
      local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
      local cmp = require 'cmp'
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end,
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
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
  },
}
