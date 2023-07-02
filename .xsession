# use UTF-8 everywhere
export es_CH.UTF-8

# specify location of kshrc
export ENV=$HOME/.kshrc

# load Xresources file
xrdb -merge $HOME/.Xresources

# set your background color
xsetroot -bitmap ~/.config/athemes/bitD

# sadly, xclock has a bug where the font selection is ignored when UTF-8
# is enabled, so we unset LANG here.
LANG= xclock -strftime "%a %e %b %Y %H:%M" &

# disable system beep
xset b off

# Don't suspend display
xset s off -dpms

# if you have a ThinkPad, the following lines enable TrackPoint
# scrolling by dragging with the middle button.
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5 

redshift -l -33.45694:-70.64827 -t 5700:2600 -b 1.0:0.7 -g 0.9 -m randr -v &
xset r rate 300 50 &
syncthing &
emacs-28.2 --daemon &

# use caps lock as ctrl key
setxkbmap -layout us -variant intl -option ctrl:nocaps

# Don't generate .core files
ulimit -Sc 0

xmessage -center -timeout 5 -default okay -file .config/bienvenido

# start cwm!
exec cwm


