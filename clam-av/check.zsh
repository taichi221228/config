#!/usr/bin/env zsh

FILE=check-0.15.2

# download
cd ~
curl -LO "https://github.com/libcheck/check/releases/download/0.15.2/$FILE.tar.gz"
tar zxf "$FILE.tar.gz"

# configure
cd $FILE
./configure --prefix=/usr/local/check

# make
make && sudo make install

# cleanup
cd ~
rm -rf $FILE "$FILE.tar.gz"
