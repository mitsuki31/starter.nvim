-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
-- Keymaps are remapped by Ryuu Mitsuki <https://github.com/mitsuki31>

local opts = { noremap = true, silent = true }
local map = vim.keymap.set  -- alias for easy remapping

-- >>>>>>>>>>>>>>>>>>> --
--  BUFFERS
-- >>>>>>>>>>>>>>>>>>> --

-- Add new buffer
map('n', '<M-n>', '<cmd>enew<cr>', vim.tbl_extend('keep', opts, {
  desc = 'New Buffer'
}))
-- Delete buffer (Snacks)
map('n', '<M-d>', function() Snacks.bufdelete() end, vim.tbl_extend('keep', opts, {
  desc = 'Delete Buffer (Snacks)'
}))

-- Save file (remap for Insert mode only)
-- NOTE: Comment this if prefer back to Normal mode after saving on Insert mode
map('i', '<C-s>', '<cmd>w<cr>', opts)

-- Open terminal like in VSCode
map({ 'i', 'n' }, '<C-`>', function() Snacks.terminal() end, opts)

-- >>>>>>>>>>>>>>>>>>> --
--  LINES FORMATTING
-- >>>>>>>>>>>>>>>>>>> --

-- Commenting
map({ 'i', 'n', 'v' }, '<C-\\>', '<cmd>normal gcc<cr>', vim.tbl_extend('keep', opts, {
  desc = 'Toggle Comment'
}))

-- Undo and Redo
map({ 'n', 'i' }, '<C-z>', '<cmd>undo<cr>', opts)  -- Undo
map({ 'n', 'i' }, '<C-y>', '<cmd>redo<cr>', opts)  -- Redo

-- Move lines
-- [Normal] Move current line to one line below the cursor
map('n', '<M-Down>', "<cmd>execute 'move .+' . v:count1<cr>==", opts)
-- [Normal] Move current line to one line above the cursor
map('n', '<M-Up>', "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", opts)

-- [Insert] Move current line to one line below the cursor
map('i', '<M-Down>', '<esc><cmd>m .+1<cr>==gi', opts)
-- [Insert] Move current line to one line above the cursor
map('i', '<M-Up>', '<esc><cmd>m .-2<cr>==gi', opts)

-- [Visual] Move blocked lines to one line below the cursor
map('v', '<M-Down>', ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv",
  vim.tbl_extend('keep', opts, { desc = 'Move Lines to One Line Below' }))
-- [Visual] Move blocked lines to one line after the cursor
map('v', '<M-Up>', ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv",
  vim.tbl_extend('keep', opts, { desc = 'Move Lines to One Line Above' }))

-----

-- Void Delete (Visual mode only)
map('v', '<S-d>', '"_d', vim.tbl_extend('keep', opts, {
  desc = 'Delete to Void'
}))

-- Block the entire contents in the current buffer
map('i', '<C-a>', '<cmd>normal ggvG<cr>', opts)
-- WARNING: Remapping Ctrl-A is not recommended because it is inbuilt
--          command to increment any number below the cursor.
--          Instead, this keymap below will use Alt-A for Normal mode.
map('n', '<M-a>', '<cmd>normal ggVG<cr>', opts)  -- Alt-A

-- >>>>>>>>>>>>>>>>>>> --
--  WORDS FORMATTING
-- >>>>>>>>>>>>>>>>>>> --

-- Rename symbol below the cursor (require LSP client at least one)
map({ 'i', 'n' }, '<F2>', function() vim.lsp.buf.rename() end, vim.tbl_extend('keep', opts, {
  desc = 'Rename'
}))

