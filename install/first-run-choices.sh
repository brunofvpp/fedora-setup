# Only ask for default desktop app choices when running Gnome
if [[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]]; then
  OPTIONAL_APPS=("Spotify")
  DEFAULT_OPTIONAL_APPS='Spotify'
  export OMAKUB_FIRST_RUN_OPTIONAL_APPS=$(gum choose "${OPTIONAL_APPS[@]}" --no-limit --selected $DEFAULT_OPTIONAL_APPS --height 7 --header "Select optional apps" | tr ' ' '-')
fi
