function fish_greeting
    # paru -S pokemon-colorscripts-git
    pokemon-colorscripts -r -s --no-title
end

set -x MANROFFOPT -c
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -gx BROWSER zen-browser
set -gx EDITOR nvim

fish_add_path ~/.cargo/bin ~/.local/bin

alias ls='eza -al --color=always --group-directories-first --icons=always'
alias la='eza -a --color=always --group-directories-first --icons=always'
alias ll='eza -l --color=always --group-directories-first --icons=always'
alias lt='eza -aT --color=always --group-directories-first --icons=always'
alias l.="eza -a | rg -e '^\.'"

alias nv="nvim"

alias cd='z'
alias ..='cd ..'

alias cat='bat'

alias untar='tar -zxvf '
alias update='sudo cachyos-rate-mirrors && sudo pacman -Syu'
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
alias jctl='journalctl -p 3 -xb'

zoxide init fish | source
starship init fish | source
