#!/usr/bin/env bash

readarray -t OPTIONS < "../../options-list.example"

ARROW_UP=$'\e[A'
ARROW_RIGHT=$'\e[C'
ARROW_LEFT=$'\e[D'

OPTIONS_AMOUNT=${#OPTIONS[@]}
CURRENT_INDEX=0

display-menu() {
    printf "\ec"
    local KEY=0
    for OPTION in "${OPTIONS[@]}"; do
        if [ $CURRENT_INDEX == $KEY ]; then
            echo "[x] $OPTION"
        else
            echo "[ ] $OPTION"
        fi
        KEY=$(($KEY+1))
    done
}

update-current-index() {
    if [ "$1" != $ARROW_UP ]; then
        if (($(($CURRENT_INDEX+1)) < $OPTIONS_AMOUNT)); then
            CURRENT_INDEX=$(($CURRENT_INDEX+1))
        fi
    else
        if (($(($CURRENT_INDEX-1)) >= 0)); then 
            CURRENT_INDEX=$(($CURRENT_INDEX-1))
        fi
    fi
}

process-users-choice() {
    echo "${OPTIONS[$CURRENT_INDEX]}"
}

display-menu
while true; do
    read -n3 -s INPUT
    if [ "$INPUT" == $ARROW_LEFT ] || [ "$INPUT" == $ARROW_RIGHT ]; then
        process-users-choice
        break
    fi
    update-current-index "$INPUT"
    display-menu
done
