# vi: ft=sh

# If not running interactively, don't do anything
shopt -oq posix && return

shopt -s cdspell
shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend

# setting PS1 here is useless since by default it gets reset in $HOME/bashrc
force_color_prompt=yes