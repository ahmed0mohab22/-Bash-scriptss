#!/bin/bash

while true; do
    OPTION=$(whiptail --title "System Administration Menu" --menu "Choose an option" 15 60 13 \
    "1" "Add User" \
    "2" "Modify User" \
    "3" "Delete User" \
    "4" "Change Password" \
    "5" "List Users" \
    "6" "Disable User" \
    "7" "Enable User" \
    "8" "Add Group" \
    "9" "Modify Group" \
    "10" "Delete Group" \
    "11" "List Groups" \
    "12" "About" \
    "13" "Exit" 3>&1 1>&2 2>&3)

    case $OPTION in
        1) ./add_user.sh ;;
        2) ./modify_user.sh ;;
        3) ./delete_user.sh ;;
        4) ./change_password.sh ;;
        5) ./list_users.sh ;;
        6) ./disable_user.sh ;;
        7) ./enable_user.sh ;;
        8) ./add_group.sh ;;
        9) ./modify_group.sh ;;
        10) ./delete_group.sh ;;
        11) ./list_groups.sh ;;
        12) ./about.sh ;;
        13) exit ;;
        *) whiptail --msgbox "Invalid option" 8 45 ;;
    esac
done
