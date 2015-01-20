# If not running interactively, don't do anything
[ -z "$PS1" ] && return

[ -f $HOME/.aliases ] && . $HOME/.aliases
[ -f $HOME/.functions ] && . $HOME/.functions

shopt -s cdspell
shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend

umask 0027

HISTSIZE=1000
HISTFILESIZE=2000

