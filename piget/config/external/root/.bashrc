# ~/.bashrc: executed by bash(1) for non-login shells.

# Pretty Terminal
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

################# THIS PART IS REQUIRED FOR PIGET DO NOT ERASE ###############
echo "-------------------------"
echo "piget framework activated"
echo "Type /show/help for more information"
echo "-------------------------"

#Easy coloring scripts
export OK="\\033[1;32m"
export NORMAL="\\033[0;39m"
export ERR="\\033[1;31m"
export INFO="\\033[1;34m"
export WARN="\\033[1;33m"
export PICOLOR="\\033[1;35m"
export BLACK="\\033[0;30m"
export BLUE="\\0034[0;34m"
export GREEN="\\033[0;32m"
###################################################################################
