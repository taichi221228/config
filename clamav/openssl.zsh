#!/usr/bin/env zsh

FILE=libressl-3.7.3

# download
cd ~ || exit
curl -LO "https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/$FILE.tar.gz"
tar zxf "$FILE.tar.gz"

# configure
cd $FILE || exit
./configure --prefix=/usr/local/libressl

# make
make && sudo make install

# cleanup
cd ~ || exit
rm -rf $FILE "$FILE.tar.gz"
