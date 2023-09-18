#!/bin/bash

terminalrc_path="$HOME/.config/xfce4/terminal/terminalrc"
theme_path="$HOME/.config/xfce4/terminal/colorschemes/solarized-light.theme"

# Check if both files exist
if [ ! -f "$terminalrc_path" ] || [ ! -f "$theme_path" ]; then
  echo "Error: One or both of the files ($terminalrc_path or $theme_path) not found."
  exit 1
fi

# Read the property names and values from the theme file into an associative array
declare -A theme_properties
while IFS== read -r key value; do
  theme_properties["$key"]=$value
done < "$theme_path"

# Function to replace property in the terminalrc file
replace_property() {
  local property="$1"
  local new_value="${theme_properties[$property]}"

  if [ -n "$new_value" ]; then
    # Escape any backslashes and forward slashes in the value
    new_value_escaped=$(sed 's/[\/&]/\\&/g' <<< "$new_value")
    # Replace the property in terminalrc
    sed -i "s/\($property\s*=\s*\).*/\1$new_value_escaped/" "$terminalrc_path"
  fi
}

# List of properties to replace from the theme
properties_to_replace=(
  "ColorForeground"
  "ColorBackground"
  "ColorCursor"
  "TabActivityColor"
  "ColorPalette"
  "ColorBold"
)

# Loop through the properties and replace them in terminalrc
for property in "${properties_to_replace[@]}"; do
  replace_property "$property"
done
