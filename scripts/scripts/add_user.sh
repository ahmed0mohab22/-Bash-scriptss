#!/bin/bash

USERNAME=$(whiptail --inputbox "Enter the username" 8 39 --title "Add User" 3>&1 1>&2 2>&3)
COMMENT=$(whiptail --inputbox "Enter the full name (comment)" 8 39 --title "Add User" 3>&1 1>&2 2>&3)
PASSWORD=$(whiptail --passwordbox "Enter the password" 8 39 --title "Add User" 3>&1 1>&2 2>&3)

if [ -n "$USERNAME" ] && [ -n "$PASSWORD" ]; then
    useradd -c "$COMMENT" -m "$USERNAME"
    echo "$USERNAME:$PASSWORD" | chpasswd
    whiptail --msgbox "User $USERNAME added successfully" 8 45
else
    whiptail --msgbox "User addition failed" 8 45
fi
