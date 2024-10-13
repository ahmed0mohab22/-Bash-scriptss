#!/bin/bash

USERNAME=$(whiptail --inputbox "Enter the username to modify" 8 39 --title "Modify User" 3>&1 1>&2 2>&3)
COMMENT=$(whiptail --inputbox "Enter the new full name (comment)" 8 39 --title "Modify User" 3>&1 1>&2 2>&3)

if [ -n "$USERNAME" ] && [ -n "$COMMENT" ]; then
    usermod -c "$COMMENT" "$USERNAME"
    whiptail --msgbox "User $USERNAME modified successfully" 8 45
else
    whiptail --msgbox "User modification failed" 8 45
fi
