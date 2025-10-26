# If using p10k then uncomment the following 2 lines:
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ----------- Theme -----------------
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
# ZSH_THEME="powerlevel10k/powerlevel10k" # set by `omz`
# If using p10k then place the following line @ the EOF:
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# -----------------------------------

# ------------- OMZ configuration --------------------
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"  # -- Case-sensitive completion must be off. _ and - will be interchangeable.
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 14
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git fzf zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
# -----------------------------------------------------

# ------------- User configuration --------------------
# echo -ne '\e[4 q'  # Set cursor to underline if iterm does not
# -----------------------------------------------------
