# No greeting
set fish_greeting

# Use vi
fish_vi_key_bindings

# Aliases
alias ll="exa -l --icons"
alias lla="ll -a"
alias vim="nvim"
alias cls="clear"

# JK exit
bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
bind -M insert kj "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
