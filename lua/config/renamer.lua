local status, renamer = pcall(require, 'renamer')
if not status then
  vim.api.nvim_echo({ { "Failed to setup 'renamer' plugin\n", "ErrorMsg" } })
end

if status then
  local mappings_utils = require('renamer.mappings.utils')
  renamer.setup({
    -- The popup title, shown if `border` is true
    title = 'Rename Current Word',
    -- The padding around the popup content
    padding = {
      top = 0,
      left = 0,
      bottom = 0,
      right = 0,
    },
    -- The minimum width of the popup
    min_width = 15,
    -- The maximum width of the popup
    max_width = 60,
    -- Whether or not to shown a border around the popup
    border = true,
    -- The characters which make up the border
    border_chars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    -- Whether or not to highlight the current word references through LSP
    show_refs = true,
    -- Whether or not to add resulting changes to the quickfix list
    with_qf_list = true,
    -- Whether or not to enter the new name through the UI or Neovim's `input`
    -- prompt
    with_popup = true,
    -- The keymaps available while in the `renamer` buffer. The example below
    -- overrides the default values, but you can add others as well.
    mappings = {
      ['<Home>'] = mappings_utils.set_cursor_to_start,
      ['<End>'] = mappings_utils.set_cursor_to_end,
      ['<C-e>'] = mappings_utils.set_cursor_to_word_end,
      ['<C-b>'] = mappings_utils.set_cursor_to_word_start,
      ['<C-c>'] = mappings_utils.clear_line,
      ['<C-z>'] = mappings_utils.undo,
      ['<C-y>'] = mappings_utils.redo,
    },
    -- Custom handler to be run after successfully renaming the word. Receives
    -- the LSP 'textDocument/rename' raw response as its parameter.
    handler = nil,
  })
end
