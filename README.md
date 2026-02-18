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
