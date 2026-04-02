To be able to fix the screen sharing problem in sway this thread is the solution https://forum.endeavouros.com/t/unable-to-share-screen-with-sway-wm/46654/4 and this is what has to be done: 

Make sure you have xdg-desktop-portal-wlr and xdg-desktop-portal installed
In $HOME/.config/sway/config, add the line include /etc/sway/config.d/*
Your drop-in file /etc/sway/config.d/50-systemd-user.conf you should somewhere have the lines

exec systemctl --user import-environment DISPLAY WAYLAND_DISPLAY SWAYSOCK XDG_CURRENT_DESKTOP
exec hash dbus-update-activation-environment 2>/dev/null && \
     dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY SWAYSOCK XDG_CURRENT_DESKTOP XDG_CURRENT_DESKTOP=sway

Restart your computer
systemctl --user show-environment should have XDG_CURRENT_DESKTOP=sway and systemctl --user status xdg-desktop-portal-wlr.service should be running.
Screen sharing with Firefox (and probably most other browsers) should work now. On Firefox you can test this under https://mozilla.github.io/webrtc-landing/gum_test.html
