# no greeting
set fish_greeting

# passless rclone
set -x RCLONE_PASSWORD_COMMAND "pass rclone/config"

# show display
if test -z "$DISPLAY" && test (tty) = "/dev/tty1"
  startx
end

# start tmux
if test "$DISPLAY" && test -z "$TMUX"
  if tmux has-session -t terminal 2>/dev/null
	exec tmux attach-session -t terminal
  else
	exec tmux new-session -s terminal
  end
end

# pnpm
set -gx PNPM_HOME "/home/kennym/snap/code/174/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
