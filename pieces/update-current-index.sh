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
