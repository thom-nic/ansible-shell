# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

test -f $HOME/.aliases && . $HOME/.aliases
test -f $HOME/.functions && . $HOME/.functions

# From http://www.ukuug.org/events/linux2003/papers/bash_tips/
# Do simple directory spelling corrections
shopt -s cdspell
shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend

umask 0027

# Set window title and prompt:
case $TERM in
  screen*)
    # Just use working dir for title
    # Add null escape sequence for screen
    shell_title='\ek\w\a\e\\'
    ;;
  *)
    # Window title format: user@host [dir]
    shell_title='\e]0;\u@\h [\w]\a'
    ;;
esac

# Prompt format: user@host [dir] \n$
prompt='\n\[\e[35m\]\u\[\e[37m\]@\[\e[32m\]\h \[\e[33m\]\w\[\e[0m\]'
# put the shell title on the second prompt line for screen
PS1=${prompt}'\n'${shell_title}'\$ '
unset shell_title prompt

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  # Mac/ homebrew:
  if [ -d /usr/local/etc/bash_completion.d ]; then
    for f in $(find /usr/local/etc/bash_completion.d -type f); do
      . $f
    done
    unset f
  # Linux:
  elif [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  # Legacy *NIX/ BSD:
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
