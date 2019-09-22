#!/bin/bash

# --- Model ---
# Source : 
# Added the :
# Other information :
# ---

# Source : https://stackoverflow.com/questions/3915040/bash-fish-command-to-print-absolute-path-to-a-file/23002317#23002317
# Added the : 22/09/2019
function abs_Path() {
    # generate absolute path from relative path
    # $1     : relative filename
    # return : absolute path
    if [ -d "$1" ]; then
        # dir
        (cd "$1"; pwd)
    elif [ -f "$1" ]; then
        # file
        if [[ $1 = /* ]]; then
            echo "$1"
        elif [[ $1 == */* ]]; then
            echo "$(cd "${1%/*}"; pwd)/${1##*/}"
        else
            echo "$(pwd)/$1"
        fi
    fi
}

