~/.git/dwm-config/bar.sh
setxkbmap -layout us,ru -variant -option grp:caps_toggle,terminate:ctrl_alt_bksp
nitrogen --restore &
dunst &

exec dwm
