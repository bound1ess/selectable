selectable-update-current-index() {
    if [ "$1" == $SELECTABLE_ARROW_DOWN ]; then
        if (($(($SELECTABLE_CURRENT_INDEX+1)) < $SELECTABLE_OPTIONS_AMOUNT)); then
            SELECTABLE_CURRENT_INDEX=$(($SELECTABLE_CURRENT_INDEX+1))
        fi
    fi
    if [ "$1" == $SELECTABLE_ARROW_UP ]; then
        if (($(($SELECTABLE_CURRENT_INDEX-1)) >= 0)); then 
            SELECTABLE_CURRENT_INDEX=$(($SELECTABLE_CURRENT_INDEX-1))
        fi
    fi
}
