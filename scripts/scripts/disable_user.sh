#!/bin/bash

USERNAME=$(whiptail --inputbox "Enter the username to disable" 8 39 --title "Disable User" 3>&1 1>&2 2>&3)

if [ -n "$USERNAME" ]; then
    usermod -L "$USERNAME"
    whiptail --msgbox "User $USERNAME disabled" 8 45
else
    whiptail --msgbox "Action failed" 8 45
fi
