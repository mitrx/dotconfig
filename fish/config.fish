set -x CLJ_CONFIG $HOME/.config/clojure
fish_add_path $HOME/bin

set -x GDK_BACKEND "wayland"
set -x CLUTTER_BACKEND "wayland"
set -x XDG_CURRENT_DESKTOP "sway"
set -x XDG_SESSION_TYPE "wayland"
set -x QT_QPA_PLATFORM "wayland-egl"
set -x QT_WAYLAND_DISABLE_WINDOWDECORATION "1"
set -x QT_WAYLAND_FORCE_DPI "physical"
set -x ECORE_EVAS_ENGINE "wayland_egl"
set -x ELM_ENGINE "wayland_egl"
set -x SDL_VIDEODRIVER "wayland"
# set -x _JAVA_AWT_WM_NONREPARENTING "1"
set -x BEMENU_BACKEND "wayland"
set -x MOZ_ENABLE_WAYLAND "1"

# make gpg-agent recognize the terminal
set -x GPG_TTY (tty)
set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh
gpg-connect-agent updatestartuptty /bye >/dev/null
