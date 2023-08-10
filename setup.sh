#!/usr/bin/bash

print_help(){
echo "usage: setup.sh [h] [i] [u]
A project by Horus64

optional arguments:
  h, help            Show this help message and exit
  i, install         Install YTDown
  u, uninstall       Uninstall YTDown
"
}

if [[ $1 == "i" ]] || [[ $1 == "install" ]]; then
    if [[ $EUID -ne 0 ]]; then
        echo "Fatal: This script must be run as root" 
        exit 1
    else
        if [[ -f "/usr/bin/ytdown" ]]; then
            echo "rm /usr/bin/ytdown"
            rm /usr/bin/ytdown
            echo "cp ytdown /usr/bin/ytdown"
            cp ytdown /usr/bin/ytdown
        
        else
            echo "cp ytdown /usr/bin/ytdown"
            cp ytdown /usr/bin/ytdown
        fi
    fi
elif [[ $1 == "u" ]] || [[ $1 == "uninstall" ]]; then
    if [[ $EUID -ne 0 ]]; then
        echo "Fatal: This script must be run as root" 
        exit 1
    else
        if [[ -f "/usr/bin/ytdown" ]]; then
            echo "rm /usr/bin/ytdown"
            rm /usr/bin/ytdown
        else
            echo "YTDown is not installed. Did you mean './setup.sh install'?"
        fi
    fi
elif [[ $1 == "h" ]] || [[ $1 == "help" ]]; then
    print_help
else
    print_help
fi

    

