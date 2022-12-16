# No greeting
set fish_greeting

# Use vi
fish_vi_key_bindings

# Aliases
alias ll="exa -l --icons"
alias lla="ll -a"
alias vim="nvim"
alias cls="clear"
alias python="python3"

# Use global clipboard
bind yy fish_clipboard_copy
bind Y fish_clipboard_copy
bind p fish_clipboard_paste
