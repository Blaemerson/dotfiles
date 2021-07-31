#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

[ -f ~/.config/fzf/fzf.bash ] && source ~/.config/fzf/fzf.bash
[ -f ~/.config/shell/aliasrc ] && source ~/.config/shell/aliasrc
# bind C-o : source /home/blake/dbdb.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
