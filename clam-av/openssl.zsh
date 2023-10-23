#!/usr/bin/env zsh

FILE=libressl-3.7.3

# download
cd ~
curl -LO "https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/$FILE.tar.gz"
tar zxf "$FILE.tar.gz"

# configure
cd $FILE
./configure --prefix=/usr/local/libressl

# make
make && sudo make install

# cleanup
cd ~
rm -rf $FILE "$FILE.tar.gz"
