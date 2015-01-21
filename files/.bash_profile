# set the terminal title to the current directory.
case $TERM in
  xterm*)
    export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
  screen*)
    export PROMPT_COMMAND='echo -e "\033_${USER}@${HOSTNAME: ${PWD}\033\\"'
    ;;
esac

export PS1='\[\e]0;\w\a\]\n\[\e[35m\]\u\[\e[37m\]@\[\e[32m\]\h \[\e[33m\]\w\[\e[0m\]\n\$ '

[ -f "${HOME}/.exports" ] && source "${HOME}/.exports"
[ -f "${HOME}/.bashrc" ] && source "${HOME}/.bashrc"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
