# These four buttons are used to interact with the menu.
SELECTABLE_ARROW_UP=$'\e[A'
SELECTABLE_ARROW_DOWN=$'\e[B'
SELECTABLE_ARROW_RIGHT=$'\e[C'
SELECTABLE_ARROW_LEFT=$'\e[D'

# Since the options list is not going to be changed dynamically, it is actually a good idea
# to store its size somewhere rather than calculating it every time.

# This is needed for selectable-update-current-index function.
SELECTABLE_OPTIONS_AMOUNT=${#SELECTABLE_OPTIONS[@]}

# Used to capture user's choice and render the menu properly.
SELECTABLE_CURRENT_INDEX=0
