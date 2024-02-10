export LC_CTYPE="en_US.UTF-8"
export ENV=$HOME/.kshrc

redshift -l -33.45694:-70.64827 -m randr -v &
xset r rate 300 50 &
syncthing --no-browser &

setxkbmap -layout us -variant intl -option ctrl:nocaps
xcape -e 'Control_L=Escape'

xsetroot -mod 16 16 -bg "#112233" -fg "#552211"
xrdb -merge $HOME/.Xdefaults

# if you have a ThinkPad, the following lines enable TrackPoint
# scrolling by dragging with the middle button.
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

ulimit -Sc 0

xterm -geometry 320x1+0+0 -fa "Hack:size=7" -bg "grey" \
	      -fg black -fs 11 -name termbar -class termbar \
	      -T termbar -e ~/.local/bin/termbar &

cwm
