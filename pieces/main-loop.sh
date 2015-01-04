# The most important function of the entire project, it ties everything together.
selectable-run() {
    
    # See pieces/display-menu.sh.
    selectable-display-menu

    while true; do

        # Read user's input.

        # -n3 means that the "read" program will exit when 3 characters were entered.
        # For example, Arrow Up's code length is 3 characters, same for Arrow Down/Left/Right.
        # This way, you do not need to press Enter in order to interact with the menu.
        
        # -s stands for "silent", meaning that characters you type will NOT be shown.
        read -n3 -s SELECTABLE_INPUT

        if [ "$SELECTABLE_INPUT" == $SELECTABLE_ARROW_LEFT ] || \
           [ "$SELECTABLE_INPUT" == $SELECTABLE_ARROW_RIGHT ]
        then
            # See pieces/(store|show)-users-choice.sh.
            selectable-process-users-choice
            break
        fi

        if [ "$SELECTABLE_INPUT" == $SELECTABLE_ARROW_UP ] || \
           [ "$SELECTABLE_INPUT" == $SELECTABLE_ARROW_DOWN ]
        then
            # See pieces/update-current-index.sh.
            selectable-update-current-index "$SELECTABLE_INPUT"

            # See the comment(s) above.
            selectable-display-menu
        fi
    done
}

# Give it a go!
selectable-run
