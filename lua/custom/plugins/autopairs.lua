<<<<<<< HEAD:lua/custom/plugins/autopairs.lua

return {
  'windwp/nvim-autopairs',
=======
-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
>>>>>>> 5e258d2 (Move plugin examples from README to optional plugin files (#831)):lua/kickstart/plugins/autopairs.lua
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require('nvim-autopairs').setup {}
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
    local cmp = require 'cmp'
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  end,
}
