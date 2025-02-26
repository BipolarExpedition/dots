# shellcheck disable=SC2148
#
# ~/.bash_profile
#
# executed by bash(1) for login shells.

# Function to add a directory to PATH if it exists
#   Optional argument: "before" to add to beginning of PATH

if [ -f "$HOME/.local/bin/.set_path" ]; then
    source "$HOME/.local/bin/.set_path"
fi

# Load the MCRCON environment variables
# shellcheck disable=SC1091
if [ -f "$HOME/.mcrcon.env" ]; then
    . "$HOME/.mcrcon.env"
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
