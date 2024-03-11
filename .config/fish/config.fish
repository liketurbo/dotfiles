# no greeting
set fish_greeting

# use vi
fish_vi_key_bindings
bind -M insert -m default jk repaint
bind -M insert -m default kj repaint

# rclone
set -x RCLONE_PASSWORD_COMMAND "pass rclone/config"

# pnpm
set -gx PNPM_HOME "/home/kennym/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
