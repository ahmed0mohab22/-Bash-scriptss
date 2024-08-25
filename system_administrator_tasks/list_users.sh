#!/bin/bash

USERS=$(awk -F: '$3 >= 1000 {print $1}' /etc/passwd)
whiptail --msgbox "Users:\n$USERS" 20 60
