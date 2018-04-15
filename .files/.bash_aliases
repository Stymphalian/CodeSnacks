### Easy access to the alias file
jja() { vim ~/.bash_aliases  && jjr; }
jjr() { source ~/.bash_aliases && echo "bash aliases reloaded"; }

jjsetup_go() {
  export GOPATH=~/dev/goenv/1.9.3
  export GOBIN=$GOPATH/bin
  export PATH=$PATH:~/dev/local/go/bin:$GOBIN
}
jjgo() {
  jjsetup_go 1.9.3
  cd ~/dev/goenv/1.9.3/src/github.com/arrenyu/kantanai
  # cd ~/dev/goenv/1.9.3/src/github.com/Stymphalian/ikuaki
  # cd ~/dev/lab/tf
}
jjt() {
  if [[ -z $1 ]]; then
    tmux new -s default -A
  else
    tmux a -t $1
  fi
}

##-----------------------------------------------------------------------------
## ----------------------------------------------------------------------------
## Misc Aliases
noin() { ./run.sh; }

### Make it easier to navigate back up directories
### Usage: cd.. 5 
cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));  
}

# Aliases
alias 'cd..'='cd_up'
