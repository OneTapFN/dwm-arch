setxkbmap us,ru -option 'grp:caps_toggle'
dwmblocks &
picom --backend glx &
feh --bg-scale ~/.wallpapers/void.png &
telegram-desktop -startintray &

while true; do
    dwm 2>~/.dwm.log
done
