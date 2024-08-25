#!/bin/bash

USERNAME=$(whiptail --inputbox "Enter the username to change password" 8 39 --title "Change Password" 3>&1 1>&2 2>&3)
PASSWORD=$(whiptail --passwordbox "Enter the new password" 8 39 --title "Change Password" 3>&1 1>&2 2>&3)

if [ -n "$USERNAME" ] && [ -n "$PASSWORD" ]; then
    echo "$USERNAME:$PASSWORD" | chpasswd
    whiptail --msgbox "Password for $USERNAME changed successfully" 8 45
else
    whiptail --msgbox "Password change failed" 8 45
fi
