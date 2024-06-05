# no greeting
set fish_greeting

# rclone
set -x RCLONE_PASSWORD_COMMAND "pass rclone/config"

# pnpm
set -gx PNPM_HOME "/home/kennym/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# remap caps lock to esc
setxkbmap -option caps:escape
