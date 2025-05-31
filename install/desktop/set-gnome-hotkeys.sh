# Use super for workspaces
gsettings set org.gnome.desktop.wm.keybindings maximize "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Alt><Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Alt><Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Super>5']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Super>6']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "[]"

# Set flameshot (with the sh fix for starting under Wayland) on alternate print screen key
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'Flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'sh -c -- "flameshot gui"'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Control>Print'
