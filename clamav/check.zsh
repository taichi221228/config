#!/usr/bin/env zsh

FILE=check-0.15.2

# download
cd ~ || exit
curl -LO "https://github.com/libcheck/check/releases/download/0.15.2/$FILE.tar.gz"
tar zxf "$FILE.tar.gz"

# configure
cd $FILE || exit
./configure --prefix=/usr/local/check

# make
make && sudo make install

# cleanup
cd ~ || exit
rm -rf $FILE "$FILE.tar.gz"
