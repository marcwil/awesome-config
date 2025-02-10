#!/bin/sh

run() {
  if ! pgrep -f "$1" > /dev/null ; then
    "$@"&
  fi
}

run "xcompmgr"
run "redshift-gtk"
run ibus-daemon -rxRd
run nm-applet

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
