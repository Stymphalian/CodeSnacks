#1 /usr/bin/env bash
for i in `ls ../pack/pack/start`; do
  mkdir -p $i
  touch $i/.vimrc
done
