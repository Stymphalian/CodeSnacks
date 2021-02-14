### Easy access to the alias file
jja() { vim ~/.bash_aliases  && jjr; }
jjr() { source ~/.bash_aliases && echo "bash aliases reloaded"; }
jjsnack() { cd ~/dev/github.com/Stymphalian/CodeSnacks; }

jjalarm() {
  sleep $1 && mplayer ~/Music/alarm.mp3 > /dev/null 2>&1
}
jjfuck() {
  mplayer ~/Music/fuck.mp3 > /dev/null 2>&1
}

# Modify these frequently for very routine stuff that you will do per project 
jjgo() {
  cd ~/dev/lab/gl/gl
}
jjsmash() {
  cd ~/dev/lab/smashml
  source .venv/bin/activate
}
jjlab() {
  cd ~/dev/lab/
  source venv/bin/activate
}
jjeuler() {
  cd ~/dev/lab/euler/
  source venv/bin/activate
}
jjqemu() {
  qemu-system-x86_64 -m 4096 -boot d -enable-kvm -smp 2 \
    -net nic -net user -soundhw all -hda ~/dev/lab/qemu/test.img
}
jji3(){
  vim ~/.config/i3/config
}
noin() { ./run.sh; }

# Setup golang PATHS quickly
jjsetup_go() {
  export PATH=$PATH:/usr/local/go/bin
  #export GOPATH=~/dev/goenv/1.12.6
  #export GOBIN=$GOPATH/bin
  #export PATH=$PATH:~/dev/local/go/bin:$GOBIN
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
alias hist='history | cut -c 8-'
