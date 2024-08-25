#!/bin/bash

USERNAME=$(whiptail --inputbox "Enter the username to enable" 8 39 --title "Enable User" 3>&1 1>&2 2>&3)

if [ -n "$USERNAME" ]; then
    usermod -U "$USERNAME"
    whiptail --msgbox "User $USERNAME enabled" 8 45
else
    whiptail --msgbox "Action failed" 8 45
fi
