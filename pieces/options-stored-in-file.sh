# There are many ways to read a file into an array in Bash, but!
# If you are using Bash 4+, readarray is definitely the way to go.
# Placeholder here is meant to be replaced with a file path.
readarray -t SELECTABLE_OPTIONS < "%s"
