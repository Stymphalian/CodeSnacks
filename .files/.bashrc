# .bashrc

# Source global definitions
#if [ -f /etc/bashrc ]; then
#	. /etc/bashrc
#fi

# use the home bin
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
export JAVA_HOME=/usr/lib/jvm/default-java

# User specific aliases and functions
#PS1='[\u@$PWD]\$ '
