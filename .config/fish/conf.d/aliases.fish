alias ls="eza --icons -a"
alias ll="eza -l --icons -g --smart-group"
alias lla="ll -a"
alias cls="clear"
alias vim="nvim"
alias suvim="sudo -E nvim"
function cd
  builtin cd $argv
  ls
end
