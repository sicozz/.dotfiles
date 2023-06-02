#!/bin/bash

entries="⭮  Reboot\n⏻  Shutdown\n⇠  Logout\n⏾  Suspend"

selected=$(echo -e $entries| wofi --show dmenu --term=kitty --width=250 --height=260 -s ~/.config/wofi/themes/solarized.css --hide-scroll --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    exec hyprctl dispatch exit NOW;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
