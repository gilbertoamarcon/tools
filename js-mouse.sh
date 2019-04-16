#!/bin/bash

## JS mouse fix 

# Prevents the gamepad from controlling the mouse pointer
#

printf "
Section \"InputClass\"
    Identifier \"joystick catchall\" 
    MatchIsJoystick \"on\"
    MatchDevicePath \"/dev/input/js*\"
    Driver \"joystick\"
    Option \"StartKeysEnabled\" \"False\"       #Disable mouse
    Option \"StartMouseEnabled\" \"False\"      #support
EndSection

Section \"InputClass\"
    Identifier \"joystick catchall\" 
    MatchIsJoystick \"on\"
    MatchDevicePath \"/dev/input/event*\"
    Driver \"joystick\"
    Option \"StartKeysEnabled\" \"False\"       #Disable mouse
    Option \"StartMouseEnabled\" \"False\"      #support
EndSection
" | sudo tee /usr/share/X11/xorg.conf.d/50-joystick.conf

sudo cp 51-these-are-not-joysticks.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && udevadm trigger
