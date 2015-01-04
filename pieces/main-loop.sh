selectable-run() {
    display-menu
    while true; do
        read -n3 -s INPUT
        if [ "$INPUT" == $ARROW_LEFT ] || [ "$INPUT" == $ARROW_RIGHT ]; then
            process-users-choice
            break
        fi
        if [ "$INPUT" == $ARROW_UP ] || [ "$INPUT" == $ARROW_DOWN ]; then
            update-current-index "$INPUT"
            display-menu
        fi
    done
}

selectable-run
