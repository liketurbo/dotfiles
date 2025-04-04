if command -q eza
	alias ls="eza --icons -a"
else
	alias ls="ls -a"
end
alias cls="clear"