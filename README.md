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
```
Default leader: Space

Base:
[Normal]
<Ctrl-d> : Move down and keep cursor centered
<Ctrl-u> : Move up and keep cursor centered
n : Next term and keep cursor centered
N : Previous term and keep cursor centered
<leader>y : Yank system buffer (works in Visual mode as well)
<leader>Y: Yank to +Y buffer
<M-h> : Previous buffer
<M-l> : Next buffer
<M-x> : Delete buffer

[Visual]
<leader>p : Paste without replacing copied buffer

[Insert]
Both PageUp and PageDown are set to Nop. This is for my laptop because those keys are in a position that I often accidentally hit.

Main Plugins:
<leader>L : Open Lazy
<leader>M : Open Mason

Oil:
- : Open Oil in parent directory
<leader>- : Open oil in parent directory (floating)

fzf-lua:
<leader><leader> : Find files in project directory
<leader>/ : Find by grepping in project directory (not fuzzy) 
<leader>fp : Find by grepping in project directory
<leader>fc : Find by grepping in current buffer
<leader>fr : Find in resume search
<leader>fu : Find in open buffers
<leader>fw : Find current word
<leader>fW : Find current WORD
<leader>fd : Find diagnostics
<leader>fo : Find old files
<leader>fa : Find autocmds
<leader>gs : Find git status
<leader>gc : Find git commits
<leader>gbl : Find git blame
<leader>gbr : Find git branches
<leader>fv : Find nvim options
<leader>vh : View nvim help
<leader>fig : Find in nvim config

fountain (.fountain):
[[ : Previous scene
]] : Next scene
<S-CR> : Uppercase line

LSP:
grn : Rename
gra : Goto code action
grD : Goto declaration
<leader>th : Toggle inlay hints

UFO:
zR : Open all folds
zM : Close all folds

Flash:
s : Flash
r : Remote Flash
<Ctrl-s> : Toggle Flash Search
```
