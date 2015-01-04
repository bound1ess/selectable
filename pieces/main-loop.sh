selectable-run() {
    selectable-display-menu
    while true; do
        read -n3 -s SELECTABLE_INPUT
        if [ "$SELECTABLE_INPUT" == $SELECTABLE_ARROW_LEFT ] || \
           [ "$SELECTABLE_INPUT" == $SELECTABLE_ARROW_RIGHT ]
        then
            selectable-process-users-choice
            break
        fi
        if [ "$SELECTABLE_INPUT" == $SELECTABLE_ARROW_UP ] || \
           [ "$SELECTABLE_INPUT" == $SELECTABLE_ARROW_DOWN ]
        then
            selectable-update-current-index "$SELECTABLE_INPUT"
            selectable-display-menu
        fi
    done
}

selectable-run
