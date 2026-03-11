# Dots

My linux dotfiles.

Meant to be used with GNU Stow.

## How to use

Clone the repo:
```
git clone https://github.com/nikmcphail/dots.git ~/dots
```

!!! Make sure you have GNU Stow installed !!!

Arch:
```
paru -S stow
```

Enter the dots directory and stow desired configs:
```
cd ~/dots && stow nvim kitty fish zellij
```

nvim binds:
## Base Keymaps

| Mode | Key | Action |
|-----|-----|-----|
| Normal | `<Ctrl-d>` | Move down and keep cursor centered |
| Normal | `<Ctrl-u>` | Move up and keep cursor centered |
| Normal | `n` | Next search term and keep cursor centered |
| Normal | `N` | Previous search term and keep cursor centered |
| Normal / Visual | `<leader>y` | Yank to system buffer |
| Normal | `<leader>Y` | Yank to `+Y` buffer |
| Visual | `<leader>p` | Paste without replacing copied buffer |

### Disabled Keys

| Key | Action |
|-----|-----|
| PageUp | Nop |
| PageDown | Nop |

---

## Main Plugins

| Key | Action |
|-----|-----|
| `<leader>L` | Open Lazy |
| `<leader>M` | Open Mason |
| `<leader>Z` | Toggle Zen |
| `<leader>T` | Toggle Twilight |
| `<leader>C` | Execute a command |

---

## Oil

| Key | Action |
|-----|-----|
| `-` | Open Oil in parent directory |
| `<leader>-` | Open Oil in parent directory (floating) |

---

## fzf-lua

| Key | Action |
|-----|-----|
| `<leader>ff` | FZF files |
| `<leader>fg` | FZF live grep |
| `<leader>fb` | FZF buffers |
| `<leader>fh` | FZF help tags |
| `<leader>fx` | FZF diagnostics (document) |
| `<leader>fX` | FZF diagnostics (workspace) |

---

## Fountain (.fountain)

| Key | Action |
|-----|-----|
| `[[` | Previous scene |
| `]]` | Next scene |
| `<S-CR>` | Uppercase line |

---

## LSP

| Key | Action |
|-----|-----|
| `<leader>gd` | Goto definition (FZF) |
| `<leader>gD` | Goto definition |
| `<leader>ca` | Code action |
| `<leader>rn` | Rename symbol |
| `<leader>D` | Line diagnostics |
| `<leader>d` | Cursor diagnostics |
| `<leader>Nd` | Next diagnostic |
| `<leader>Pd` | Previous diagnostic |
| `K` | Hover documentation |
| `<leader>fd` | LSP definition (FZF) |
| `<leader>fr` | LSP references (FZF) |
| `<leader>ft` | LSP type definitions (FZF) |
| `<leader>fs` | LSP document symbols (FZF) |
| `<leader>fw` | LSP workspace symbols (FZF) |
| `<leader>fi` | LSP implementations (FZF) |
| `<leader>oi` | Organize imports (if supported) |
| `<leader>q` | Open diagnostic list |
| `<leader>dl` | Show line diagnostics |

---

## Flash

| Key | Action |
|-----|-----|
| `z` | Flash |
| `Z` | Flash Treesitter |
| `r` | Remote Flash |
| `R` | Treesitter search |

---

## Which-key

| Key | Action |
|-----|-----|
| `<leader>?` | Buffer local keymaps |

---

## Bento

| Key | Action |
|-----|-----|
| `;` | Open Bento menu |
| `Backspace` | Delete buffer |
| `Enter` | Open buffer |

---

## Git Signs

| Key | Action |
|-----|-----|
| `]h` | Next git hunk |
| `[h` | Previous git hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>hB` | Toggle inline blame |
| `<leader>hd` | Diff this |

---

## Mini

| Key | Action |
|-----|-----|
| `[i` | Go to top of scope |
| `]i` | Go to end of scope |
| `sa` | Add surround |
| `sd` | Delete surround |
| `sf` | Find surround (right) |
| `sF` | Find surround (left) |
| `sh` | Highlight surround |
| `sr` | Replace surround |
