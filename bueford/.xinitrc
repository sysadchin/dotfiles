#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
exec startfluxbox
exec synergys
#until wmii; do
#	true
#done

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

#xmodmap "/home/ag/.Xmodmap"
#fbsetbg -l

#/home/ag/.fehbg &
#/usr/bin/aterm -name aterm -sl 3000 -tr +sb -si -sk -sh 60 -fn -misc-fixed-medium-r-normal-*-*-120-*-*-c-*-iso8859-2 -g 130x50-0+0  &

