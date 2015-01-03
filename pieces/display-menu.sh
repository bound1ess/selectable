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
