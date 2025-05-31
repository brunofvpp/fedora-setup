sudo dnf install -y gnome-extensions-app pipx
pipx install gnome-extensions-cli --system-site-packages

# Pause to assure user is ready to accept confirmations
gum confirm "To install Gnome extensions, you need to accept some confirmations. Ready?"

# Install new extensions
gext install AlphabeticalAppGrid@stuarthayhurst
gext install appindicatorsupport@rgcjonas.gmail.com
gext install blur-my-shell@aunetx
gext install BringOutSubmenuOfPowerOffLogoutButton@pratap.fastmail.fm
gext install custom-hot-corners-extended@G-dH.github.com
gext install dash-to-dock@micxgx.gmail.com
gext install ddterm@amezin.github.com
gext install lockkeys@vaina.lt
gext install mediacontrols@cliffniff.github.com
gext install middleclickclose@paolo.tranquilli.gmail.com
gext install quick-settings-avatar@d-go
gext install trayIconsReloaded@selfmade.pl
gext install volume_scroller@francislavoie.github.io
gext install weatheroclock@CleoMenezesJr.github.io

# Compile gsettings schemas in order to be able to set them
sudo cp ~/.local/share/gnome-shell/extensions/AlphabeticalAppGrid\@stuarthayhurst/schemas/org.gnome.shell.extensions.AlphabeticalAppGrid.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/appindicatorsupport\@rgcjonas.gmail.com/schemas/org.gnome.shell.extensions.appindicator.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/blur-my-shell\@aunetx/schemas/org.gnome.shell.extensions.blur-my-shell.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/BringOutSubmenuOfPowerOffLogoutButton\@pratap.fastmail.fm/schemas/org.gnome.shell.extensions.bring-out-submenu-of-power-off-logout.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/custom-hot-corners-extended\@G-dH.github.com/schemas/org.gnome.shell.extensions.custom-hot-corners-extended.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/dash-to-dock\@micxgx.gmail.com/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/ddterm\@amezin.github.com/schemas/com.github.amezin.ddterm.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/lockkeys\@vaina.lt/schemas/org.gnome.shell.extensions.lockkeys.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/mediacontrols\@cliffniff.github.com/schemas/org.gnome.shell.extensions.mediacontrols.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/middleclickclose\@paolo.tranquilli.gmail.com/schemas/org.gnome.shell.extensions.middleclickclose.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/quick-settings-avatar\@d-go/schemas/org.gnome.shell.extensions.quick-settings-avatar.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/trayIconsReloaded\@selfmade.pl/schemas/org.gnome.shell.extensions.trayIconsReloaded.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/volume_scroller\@francislavoie.github.io/schemas/org.gnome.shell.extensions.volume-scroller.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/weatheroclock\@CleoMenezesJr.github.io/schemas/org.gnome.shell.weather-oclock.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# Configure Blur My Shell
gsettings set org.gnome.shell.extensions.blur-my-shell brightness "0.59999999999999998"
gsettings set org.gnome.shell.extensions.blur-my-shell color "(0.0, 0.0, 0.0, 0.0)"
gsettings set org.gnome.shell.extensions.blur-my-shell color-and-noise "true"
gsettings set org.gnome.shell.extensions.blur-my-shell debug "false"
gsettings set org.gnome.shell.extensions.blur-my-shell hacks-level "1"
gsettings set org.gnome.shell.extensions.blur-my-shell noise-amount "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell noise-lightness "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell pipelines "{'pipeline_default': {'name': <'Default'>, 'effects': <[<{'type': <'native_static_gaussian_blur'>, 'id': <'effect_000000000000'>, 'params': <{'radius': <30>, 'brightness': <0.59999999999999998>}>}>]>}, 'pipeline_default_rounded': {'name': <'Default rounded'>, 'effects': <[<{'type': <'native_static_gaussian_blur'>, 'id': <'effect_000000000001'>, 'params': <{'radius': <30>, 'brightness': <0.59999999999999998>}>}>, <{'type': <'corner'>, 'id': <'effect_000000000002'>, 'params': <{'radius': <24>}>}>]>}}"
gsettings set org.gnome.shell.extensions.blur-my-shell settings-version "2"
gsettings set org.gnome.shell.extensions.blur-my-shell sigma "30"
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder blur "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder brightness "0.59999999999999998"
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder color "(0.0, 0.0, 0.0, 0.0)"
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder customize "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder noise-amount "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder noise-lightness "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder sigma "30"
gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder style-dialogs "1"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications blacklist "['Plank', 'com.desktop.ding', 'Conky']"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications blur "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications blur-on-overview "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications brightness "1.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications color "(0.0, 0.0, 0.0, 0.0)"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications customize "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications dynamic-opacity "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications enable-all "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications noise-amount "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications noise-lightness "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications opacity "215"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications sigma "30"
gsettings set org.gnome.shell.extensions.blur-my-shell.applications whitelist "@as []"
gsettings set org.gnome.shell.extensions.blur-my-shell.coverflow-alt-tab blur "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.coverflow-alt-tab pipeline "'pipeline_default'"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock blur "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock brightness "0.59999999999999998"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock color "(0.0, 0.0, 0.0, 0.0)"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock corner-radius "12"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock customize "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock noise-amount "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock noise-lightness "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock override-background "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock pipeline "'pipeline_default_rounded'"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock sigma "30"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock static-blur "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock style-dash-to-dock "0"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock unblur-in-overview "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-panel blur-original-panel "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.hidetopbar compatibility "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen blur "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen brightness "0.59999999999999998"
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen color "(0.0, 0.0, 0.0, 0.0)"
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen customize "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen noise-amount "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen noise-lightness "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen pipeline "'pipeline_default'"
gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen sigma "30"
gsettings set org.gnome.shell.extensions.blur-my-shell.overview blur "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.overview brightness "0.59999999999999998"
gsettings set org.gnome.shell.extensions.blur-my-shell.overview color "(0.0, 0.0, 0.0, 0.0)"
gsettings set org.gnome.shell.extensions.blur-my-shell.overview customize "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.overview noise-amount "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.overview noise-lightness "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.overview pipeline "'pipeline_default'"
gsettings set org.gnome.shell.extensions.blur-my-shell.overview sigma "30"
gsettings set org.gnome.shell.extensions.blur-my-shell.overview style-components "1"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel blur "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel brightness "0.59999999999999998"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel color "(0.0, 0.0, 0.0, 0.0)"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel customize "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel force-light-text "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel noise-amount "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel noise-lightness "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel override-background "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel override-background-dynamically "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel pipeline "'pipeline_default'"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel sigma "30"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel static-blur "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel style-panel "0"
gsettings set org.gnome.shell.extensions.blur-my-shell.panel unblur-in-overview "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot blur "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot brightness "0.59999999999999998"
gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot color "(0.0, 0.0, 0.0, 0.0)"
gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot customize "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot noise-amount "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot noise-lightness "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot pipeline "'pipeline_default'"
gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot sigma "30"
gsettings set org.gnome.shell.extensions.blur-my-shell.window-list blur "true"
gsettings set org.gnome.shell.extensions.blur-my-shell.window-list brightness "0.59999999999999998"
gsettings set org.gnome.shell.extensions.blur-my-shell.window-list color "(0.0, 0.0, 0.0, 0.0)"
gsettings set org.gnome.shell.extensions.blur-my-shell.window-list customize "false"
gsettings set org.gnome.shell.extensions.blur-my-shell.window-list noise-amount "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.window-list noise-lightness "0.0"
gsettings set org.gnome.shell.extensions.blur-my-shell.window-list pipeline "'pipeline_default'"
gsettings set org.gnome.shell.extensions.blur-my-shell.window-list sigma "30"

# Configure AlphabeticalAppGrid
gsettings set org.gnome.shell.extensions.alphabetical-app-grid folder-order-position "'end'"
gsettings set org.gnome.shell.extensions.alphabetical-app-grid logging-enabled "false"
gsettings set org.gnome.shell.extensions.alphabetical-app-grid show-favourite-apps "false"
gsettings set org.gnome.shell.extensions.alphabetical-app-grid sort-folder-contents "true"

# Configure WindowList
gsettings set org.gnome.shell.extensions.window-list display-all-workspaces "false"
gsettings set org.gnome.shell.extensions.window-list embed-previews "true"
gsettings set org.gnome.shell.extensions.window-list grouping-mode "'never'"
gsettings set org.gnome.shell.extensions.window-list show-on-all-monitors "false"

# Configure AppsMenu
gsettings set org.gnome.shell.extensions.apps-menu apps-menu-toggle-menu "['<Alt>F1']"
