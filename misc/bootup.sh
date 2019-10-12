#!/usr/bin/env bash
DIR=~/dev/github.com/Stymphalian/CodeSnacks
HOMEDIR=/home/jordan
pushd $DIR

function difit() {
  diff $1 $2 > /dev/null
  if [[ $? -ne 0 ]]; then
    read -p "diff $1 $2 . continue? (y/n) " -n 1
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
      exit 1
    fi
  fi
  return $?
}

#git pull origin master
function copyOver() {
   # vim
   ln -f -s "$DIR/vim" "$HOMEDIR/.vim"
   difit "$DIR/dotfiles/.vimrc" "$HOMEDIR/.vimrc"
   ln -f -s "$DIR/dotfiles/.vimrc" "$HOMEDIR/.vimrc"

   # nvim 
   mkdir -p "$HOMEDIR/.config/nvim"
   difit "$DIR/nvim/init.vim" "$HOMEDIR/.config/nvim/init.vim"
   ln -f -s "$DIR/nvim/init.vim" "$HOMEDIR/.config/nvim/init.vim"

   # bashrc
   difit "$DIR/dotfiles/.bashrc" "$HOMEDIR/.bashrc"
   ln -f -s "$DIR/dotfiles/.bashrc" "$HOMEDIR/.bashrc"
   difit "$DIR/dotfiles/.bash_aliases" "$HOMEDIR/.bash_aliases"
   ln -f -s "$DIR/dotfiles/.bash_aliases" "$HOMEDIR/.bash_aliases"

   # zsh
   difit "$DIR/dotfiles/.zshrc" "$HOMEDIR/.zshrc"
   ln -f -s "$DIR/dotfiles/.zshrc" "$HOMEDIR/.zshrc"
   mkdir -p "$HOMEDIR/.oh-my-zsh/themes"
   difit "$DIR/zsh/jordanyu.zsh-theme" "$HOMEDIR/.oh-my-zsh/themes/jordanyu.zsh-theme"
   ln -f -s "$DIR/zsh/jordanyu.zsh-theme" "$HOMEDIR/.oh-my-zsh/themes/jordanyu.zsh-theme"

   # tmux
   difit "$DIR/dotfiles/.tmux.conf" "$HOMEDIR/.tmux.conf"
   ln -f -s "$DIR/dotfiles/.tmux.conf" "$HOMEDIR/.tmux.conf"

   # vscode
   mkdir -p "$HOMEDIR/.config/Code/User"
   difit "$DIR/vscode/settings.json" "$HOMEDIR/.config/Code/User/settings.json"
   ln -f -s "$DIR/vscode/settings.json" "$HOMEDIR/.config/Code/User/settings.json"
   difit "$DIR/vscode/keybindings.json" "$HOMEDIR/.config/Code/User/keybindings.json"
   ln -f -s "$DIR/vscode/keybindings.json" "$HOMEDIR/.config/Code/User/keybindings.json"
}

copyOver
unset difit
unset copyOver

popd "$@" > /dev/null
