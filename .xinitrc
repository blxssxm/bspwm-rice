xset r rate 300 150
setxkbmap -option caps:super
killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape'
xmodmap -e 'keycode 135 = Super_R'
xset -q | grep "Caps Lock:\s*on" && xdotool key Caps_Lock
setxkbmap gb
xwallpaper --zoom /home/dawn/up.png
#exec dwm
dbus-run-session bspwm
/usr/libexec/xfce-polkit &
./ /home/dawn/.config/polybar/launch.sh

