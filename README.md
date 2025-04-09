# Neovim Starter

A starter configuration that I used on my terminal-based IDE powered by Neovim.

---

## Key Mappings

Default keymaps set by [LazyVim](https://github.com/LazyVim/LazyVim) can be found [here](https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua) and customized by [@mitsuki31](https://github.com/mitsuki31).

### Buffers
| Keybinding | Mode | Description |
| ---------- | ---- | ----------- |
| <kbd>Alt-N</kbd> | Normal | Create a new buffer. |
| <kbd>Alt-D</kbd> | Normal | Delete the current buffer using `Snacks.bufdelete()`. |
| <kbd>Ctrl-S</kbd> | Insert | Save current buffer without changing to **Normal** mode. |

### Formatting
| Keybinding | Mode | Description |
| ---------- | ---- | ----------- |
| <kbd>F2</kbd> | Insert, Normal | Rename the symbol name on below cursor. |

### Lines Formatting
| Keybinding | Mode | Description |
| ---------- | ---- | ----------- |
| <kbd>Ctrl-\\</kbd> | Insert, Normal, Visual | Toggle comment for the current line or selection. |
| <kbd>Ctrl-Z</kbd> | Insert, Normal | Undo the last change. |
| <kbd>Ctrl-Y</kbd> | Insert, Normal | Redo the last undone change. |

#### Moving Lines
| Keybinding | Mode | Description |
| ---------- | ---- | ----------- |
| <kbd>Alt-Down</kbd> | Normal | Move the current line below the cursor. |
| <kbd>Alt-Up</kbd> | Normal | Move the current line above the cursor. |
| <kbd>Alt-Down</kbd> | Insert | Move the current line down while staying in Insert mode. |
| <kbd>Alt-Up</kbd> | Insert | Move the current line up while staying in Insert mode. |
| <kbd>Alt-Down</kbd> | Visual | Move selected lines down. |
| <kbd>Alt-Up</kbd> | Visual | Move selected lines up. |

#### Deleting Lines
| Keybinding | Mode | Description |
| ---------- | ---- | ----------- |
| <kbd>Shift-D</kbd> | Visual | Delete selection without copying to clipboard (Void Delete). |

### Selection
| Keybinding | Mode | Description |
| ---------- | ---- | ----------- |
| <kbd>Ctrl-A</kbd> | Insert | Select all text in the buffer. |
| <kbd>Alt-A</kbd> | Normal | Select all text in the buffer (alternative to <kbd>Ctrl-A</kbd> to avoid overriding number increment functionality). |

---

## Notes
- <kbd>F2</kbd> keybinding requires at least one LSP-client is active for current buffer.
- <kbd>Ctrl-A</kbd> **Remapping Warning:**
  - <kbd>Ctrl-A</kbd> is normally used to increment numbers under the cursor. The alternative `<kbd>Alt-A</kbd> is provided for selecting all text in **Normal** mode.
- **Commenting Keymap ( <kbd>Ctrl-\\</kbd> )**:
  - This keybinding replaces the default comment toggling shortcut (`gcc`) with a more accessible key combination.

## References

- [LazyVim's Documentation](https://lazyvim.github.io/installation)
- [LazyVim's Default Keymaps](https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua)

