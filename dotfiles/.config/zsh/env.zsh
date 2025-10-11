# Define the main lang for locale based apps
export LANG=en_US.UTF-8
# -------------------------------------------
eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(fzf --zsh)"

#zoxide config
export _ZO_ECHO='1'
eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# # Setup fzf
# # ---------
# if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
#   PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
# fi
#
# source <(fzf --zsh)sh
