# no greeting
set fish_greeting

# passless rclone
set -x RCLONE_PASSWORD_COMMAND "pass rclone/config"

# pnpm
set -gx PNPM_HOME "/home/kennym/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# show display
if test -z "$DISPLAY" && test (tty) = "/dev/tty1"
  startx
end

# start tmux
if test "$DISPLAY" && test -z "$TMUX"
  exec tmux
end
