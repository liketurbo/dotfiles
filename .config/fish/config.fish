# No greeting
set fish_greeting
# Use vi
fish_vi_key_bindings
bind -M insert -m default jk repaint
bind -M insert -m default kj repaint

# Env variables
set -x RCLONE_PASSWORD_COMMAND "pass rclone/config"
