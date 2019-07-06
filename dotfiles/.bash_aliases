### Easy access to the alias file
jja() { vim ~/.bash_aliases  && jjr; }
jjr() { source ~/.bash_aliases && echo "bash aliases reloaded"; }

# Modify these frequently for very routine stuff that you will do per project 
jjgo() {
  cd ~/dev/lab/rust/play
}
noin() { ./run.sh; }

# Setup golang PATHS quickly
jjsetup_go() {
  export GOPATH=~/dev/goenv/1.12.6
  export GOBIN=$GOPATH/bin
  export PATH=$PATH:~/dev/local/go/bin:$GOBIN
}

# open a tmux session
jjt() {
  if [[ -z $1 ]]; then
    tmux new -s default -A
  else
    tmux a -t $1
  fi
}

##-----------------------------------------------------------------------------
## Aliases
## ----------------------------------------------------------------------------

# cd .. frequent stuff
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias 'nvim=/home/jordan/bin/AppImages/nvim.appimage'
