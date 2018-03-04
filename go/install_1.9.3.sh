#! /usr/bin/env bash
VERSION=1.9.3
TMPDIR=/tmp

echo Setup golang...
mkdir -p $TMPDIR/setup_golang/

pushd $TMPDIR/setup_golang
GOBOOTVERSION=go1.9.3.linux-amd64.tar.gz
wget https://dl.google.com/go/$GOBOOTVERSION
echo "a4da5f4c07dfda8194c4621611aeb7ceaab98af0b38bfb29e1be2ebb04c3556c $GOBOOTVERSION" >> go.sha
if [[ -n $(sha256sum -c go.sha | grep "WARNING") ]]; then
  echo sha1 hash of file failed. Golang not installed.
  return
fi
tar -xzvf $GOBOOTVERSION
ln -s $TMPDIR/setup_golang/go ~/go1.4
popd

# Clone the go source and install
pushd ~/dev/local
git clone https://go.googlesource.com/go
cd go
git checkout go$VERSION
cd src
./all.bash
popd

# # remove the bootstrap version
rm ~/go1.4
