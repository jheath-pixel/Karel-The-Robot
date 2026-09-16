#!/bin/bash

# Start virtual display
Xvfb :1 -screen 0 1280x800x24 &
sleep 2

# Tell applications to use the virtual display
export DISPLAY=:1

# Start window manager
fluxbox &

# Start VNC server
x11vnc -display :1 -forever -shared -rfbport 5900 -nopw &

# Start noVNC web interface
/usr/share/novnc/utils/novnc_proxy --vnc localhost:5900 --listen 6080