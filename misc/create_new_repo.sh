#!/usr/bin/sh

if [ -z "$1" ]; then
  echo "Please provide the name of the repo"
  exit
fi

pushd /volume1/git/
git --bare init $1.git
chown -R gituser:users $1.git
pushd $1.git
chmod 700 config
git update-server-info
popd
popd

echo "/volume1/git/$1.git repo was created."
