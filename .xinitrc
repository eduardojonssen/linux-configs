#!/bin/sh

xrandr --setprovideroutputsource modsetting NVIDIA-0
xrandr --auto

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrdb -merge ~/.Xresources &

nm-applet --sm-disable &
exec awesome
