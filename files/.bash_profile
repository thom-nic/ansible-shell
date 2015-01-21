# ~/.bash_profile: executed by bash for login shells.

# Window title format: user@host [dir]
case $TERM in
  screen*)
    # Add null escape sequence for screen
    shell_title='\ek\w\a\e\\'
    ;;
  *)
    shell_title='\[\e]0;\u@\h [\w]\a\]'
    ;;
esac

# Prompt format: user@host [dir] \n$
prompt='\n\[\e[35m\]\u\[\e[37m\]@\[\e[32m\]\h \[\e[33m\]\w\[\e[0m\]'
# put the shell title on the second prompt line for screen
export PS1=${prompt}'\n'${shell_title}'\$ '
unset shell_title prompt

[ -f "${HOME}/.exports" ] && source "${HOME}/.exports"
[ -f "${HOME}/.profile" ] && source "${HOME}/.profile"
[ -f "${HOME}/.bashrc" ] && source "${HOME}/.bashrc"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
