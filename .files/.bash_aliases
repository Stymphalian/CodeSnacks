bb=~/dev/bazel-bin

jjcp() { cp -rfL "$@" $HOME/shared/; }

### Easy access to the alias file
jja() { vim ~/.bash_aliases  && jjr; }
jjr() { source ~/.bash_aliases && echo "bash aliases reloaded"; }

### Easy access to work.sh
jjw() { source ~/work.sh; }

### Shutdown the virtual machine
jjs() { sudo shutdown -P now; }

##-----------------------------------------------------------------------------
## ----------------------------------------------------------------------------
## Misc Aliases
noin() { ./run.sh; }

### Make it easier to navigate back up directories
### Usage: cd.. 5 
cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));  
}
alias 'cd..'='cd_up'
