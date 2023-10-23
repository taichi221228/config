#!/usr/bin/env zsh

FILE=pcre2-10.42

# donwload
cd ~
curl -LO "https://github.com/PCRE2Project/pcre2/releases/download/$FILE/$FILE.tar.bz2"
tar zxf "$FILE.tar.bz2"

# configure
cd $FILE
./configure --prefix=/usr/local/pcre2

# make
make && sudo make install

# cleanup
cd ~
rm -rf $FILE "$FILE.tar.bz2"
