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
