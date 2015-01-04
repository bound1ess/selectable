# This is needed to render the menu properly, according to user's actions.
# The first menu option has an index of 0. The lower option is, the higher index it has.
selectable-update-current-index() {

    # In case Arrow Down was pressed.
    if [ "$1" == $SELECTABLE_ARROW_DOWN ]; then
        
        # If there are no more options to choose from, do nothing: the current index will NOT
        # be reset to 0 (zero).
        if (($(($SELECTABLE_CURRENT_INDEX+1)) < $SELECTABLE_OPTIONS_AMOUNT)); then

            # Increment the value.
            SELECTABLE_CURRENT_INDEX=$(($SELECTABLE_CURRENT_INDEX+1))
        fi
    fi

    # In case Arrow Up was pressed.
    if [ "$1" == $SELECTABLE_ARROW_UP ]; then

        # See the condition above. The current index will NOT be set to the latest element 
        # (option).
        if (($(($SELECTABLE_CURRENT_INDEX-1)) >= 0)); then

            # Decrement the value.
            SELECTABLE_CURRENT_INDEX=$(($SELECTABLE_CURRENT_INDEX-1))
        fi
    fi
}
