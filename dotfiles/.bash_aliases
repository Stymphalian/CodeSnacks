### Easy access to the alias file
jja() { vim ~/.bash_aliases  && jjr; }
jjr() { source ~/.bash_aliases && echo "bash aliases reloaded"; }
jjsnack() { cd ~/dev/github.com/Stymphalian/CodeSnacks; }

# Modify these frequently for very routine stuff that you will do per project 
jjgo() {
  source ~/dev/lab/tf/setup.sh
  cd ~/dev/lab/yolov3
  #cd ~/dev/lab/rust/play
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
    tmux new -s $1 -A
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
