# ========== Oh-My-Zsh ==========
ZSH_THEME="robbyrussell"

export ZSH="$HOME/.oh-my-zsh"

plugins=(git copyfile copybuffer copypath fzf git-extras)

export FZF_BASE=/path/to/fzf/install/dir

source $ZSH/oh-my-zsh.sh

# ========== Greet ==========

alias greet="python3 /home/ardsimm/.config/zsh/welcome.py"
greet

# ========== ENV Variables ==========
#
# ---------- nvim ----------
export USER="smenard"
export MAIL="smenard@student.42lyon.fr"

# ----- Directories -----
# dev
DEV_DIR="$HOME/dev"
SCRIPTS_DIR="$DEV_DIR/scripts"

# ft
FT_DIR="$DEV_DIR/ft"
COMMON_CORE_DIR="$FT_DIR/common_core"
MS_0_DIR="$COMMON_CORE_DIR/ms-0"
MS_1_DIR="$COMMON_CORE_DIR/ms-1"
MS_2_DIR="$COMMON_CORE_DIR/ms-2"
MS_3_DIR="$COMMON_CORE_DIR/ms-3"
CODEXION_DIR="$MS_3_DIR/codexion"

# config
CONFIG_DIR="$HOME/.config"

# ========== ALIASES ==========
#
# ---------- Git ----------
# Addig & Commiting
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gcm="git commit -m"
alias gcam="git commit --amend"
# Pushing & Pulling
alias gpl="git pull"
alias gps="git push"
alias gpsf="git push -f"
alias gpsu="git push -u"
alias gpsuom="git push -u origin master"

# Restore
alias grest="git restore"
alias gresta="git restore ."

# Other
alias gs="git status"

# ----- GOTO -----
#
# dev
alias gotodev="cd $DEV_DIR"
alias gotoscripts="cd $SCRIPTS_DIR"
alias gotoft="cd $FT_DIR"
alias gotoms0="cd $MS_0_DIR"
alias gotoms1="cd $MS_1_DIR"
alias gotoms2="cd $MS_2_DIR"
alias gotoms3="cd $MS_3_DIR"
alias gotocdx="cd $CODEXION_DIR"

# config

alias gotoconf="cd $CONFIG_DIR"

# ---------- zshrc ----------
alias reload="clear && source ~/.zshrc"
alias editconf="nvim ~/.zshrc && reload"
alias saveconf="cp ~/.zshrc $CONFIG_DIR"

commitconf() {
	saveconf || return 1
	git -C "$CONFIG_DIR" add .
	git -C "$CONFIG_DIR" commit -m "auto update" && git -C "$CONFIG_DIR" push
}

# ---------- Package installation ----------#

# pacman
alias pinstall="sudo pacman -Sy"
alias premove="sudo pacman -R"
alias premoved="sudo pacman -Rs"
alias pupdate="sudo pacman -Syu"

# yay
alias yinstall="yay -Sy"
alias yremove="yay -R"
alias yremoved="yay -Rs"
alias yupdate="yay -Syu"

# ---------- Development tools -----------

# Python
alias pnorm="python3 -m flake8"
alias plint="python3 -m mypy --strict ."
alias pformat="black"

# C
alias cformat="c_formatter_42 **/*.c **/*.h"
alias cnorm="norminette"
alias vg="valgrind --leak-check=full -s --show-mismatched-frees=yes --track-origins=yes --show-leak-kinds=all"

# Lazygit
alias lg="lazygit"


# ---------- Overrides ----------
alias clear="clear && greet"
