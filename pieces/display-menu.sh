selectable-display-menu() {
    printf "\ec"
    local KEY=0
    for OPTION in "${SELECTABLE_OPTIONS[@]}"; do
        if [ $SELECTABLE_CURRENT_INDEX == $KEY ]; then
            echo "[x] $OPTION"
        else
            echo "[ ] $OPTION"
        fi
        KEY=$(($KEY+1))
    done
}
