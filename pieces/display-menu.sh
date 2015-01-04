# This function renders the menu, taking in consideration user's actions.
selectable-display-menu() {

    # Quickly clear the screen (terminal).
    printf "\ec"
    
    # This variable is defined locally, so we do not need to prefix it with SELECTABLE_.
    local KEY=0

    # Iterate over the list of options.
    for OPTION in "${SELECTABLE_OPTIONS[@]}"; do

        # For better visibility.
        # Remember that $SELECTABLE_CURRENT_INDEX's state is maintained via the
        # selectable-update-current-index function.
        if [ $SELECTABLE_CURRENT_INDEX == $KEY ]; then
            echo "[x] $OPTION"
        else
            echo "[ ] $OPTION"
        fi

        # Increment its value.
        KEY=$(($KEY+1))
    done
}
