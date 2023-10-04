alias ls="eza --icons"
alias lsa="eza --icons -a"
alias ll="eza -l --icons"
alias lla="eza -l --icons -a"
alias cls="clear"
alias vim="nvim"
function cd
  builtin cd $argv
  lsa
end
