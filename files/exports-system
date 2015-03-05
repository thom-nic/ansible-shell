# vi: ft=sh

export LS_COLORS='fi=0:di=34:ln=36:ex=35:pi=5;44:so=5;44:bd=35;42:cd=36;42:or=37;41:mi=33;41'
export EDITOR="vim"
export HISTCONTROL='ignoreboth'
export HISTIGNORE="&: *:[bf]g:exit:logout"
export FIGNORE=CVS:\~:.svn

# Common environment settings for various tools:
export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF8"
export MAVEN_OPTS="-Xmx256m -XX:MaxPermSize=256m"
if [ -d $HOME/.ec2 ]; then
  export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
  export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
fi
export PYTHONSTARTUP=$HOME/.pystartup
export DOCKER_HOST=tcp://:2375

# Add additional customization if present
[ -f $HOME/.exports.local ] && source $HOME/.exports.local
