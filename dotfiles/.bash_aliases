### Easy access to the alias file
jja() { nvim ~/.bash_aliases  && jjr; }
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
  cd ~/dev/lab/graphics/rust/rayt
  #jjandroid
  #jjreceipt
}
jjgl() {
  cd ~/dev/lab/gl/gl
}
jjreceipt() {
  cd ~/dev/farah.com/volume1/git/receipts/
  source venv/bin/activate
}
jjandroid() {
  cd ~/dev/farah.com/volume1/git/learn/
}
jjcrypt() {
  cd ~/dev/lab/crypt
  i3-sensible-terminal
  sleep 0.1
  i3-msg -q "move scratchpad"
  sleep 0.1
  i3-sensible-terminal
  sleep 0.1
  i3-msg -q "focus left"
  sleep 0.1
  i3-msg -q "layout tabbed"
  nvim
}
jjvim() {
  cd ~/dev/lab/vim/jordan.vim
  i3-sensible-terminal
  sleep 0.1
  i3-msg -q "move scratchpad"
  sleep 0.1
  i3-sensible-terminal
  sleep 0.1
  i3-msg -q "focus left"
  sleep 0.1
  i3-msg -q "layout tabbed"
  sleep 0.1
  nvim
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
jjqemu2() {
  qemu-system-x86_64 -m 4096 -boot d -enable-kvm -smp 2 \
    -net nic -net user -soundhw all \
    -virtfs local,path=/home/jordan/dev/lab/qemu/share,mount_tag=host0,security_model=passthrough,id=host0 \
    -hda ~/dev/lab/qemu/test.img
}
jji3(){
  nvim ~/.config/i3/config
}
jjpostman() {
  /home/jordan/Downloads/Postman-linux-x86_64-8.12.4/Postman/Postman & disown
}
noin() { ./run.sh; }

# Setup golang PATHS quickly
jjsetup_go() {
  #export PATH=$PATH:/usr/local/go/bin
  export GOPATH=~/dev/lab/golang
  export GOBIN=$GOPATH/bin
  export PATH=$PATH:/usr/local/go/bin:$GOBIN
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

jjswitch() {
  cd /home/jordan/dev/lab/switch/fusee-launcher
  sudo python3 fusee-launcher.py hekate_ctcaer_5.6.5.bin
}

##-----------------------------------------------------------------------------
## Aliases
## ----------------------------------------------------------------------------
# cd .. frequent stuff
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
#alias 'nvim=/home/jordan/bin/AppImages/nvim.appimage'
#alias 'nvim=/usr/local/bin/nvim7.2'
alias 'nvim=/usr/local/bin/nvim8.0'
#alias 'nvim=/home/jordan/Downloads/nvim/nvim-linux64.v8.0.0/bin/nvim'
alias 'nv=nvim'
#alias 'nvim5=/home/jordan/dev/neovim/bin/nvim'
#alias 'nv5=nvim5'
alias hist='history | cut -c 8-'
alias histg='history | cut -c 8- | grep'
