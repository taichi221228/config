#!/usr/bin/env zsh

FILE=pcre2-10.42

# download
cd ~ || exit
curl -LO "https://github.com/PCRE2Project/pcre2/releases/download/$FILE/$FILE.tar.bz2"
tar zxf "$FILE.tar.bz2" # FIX: not working

# configure
cd $FILE || exit
./configure --prefix=/usr/local/pcre2

# make
make && sudo make install

# cleanup
cd ~ || exit
rm -rf $FILE "$FILE.tar.bz2" # FIX: not working
