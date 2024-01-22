#!/usr/bin/env zsh

FILE=pkg-config-0.29.2

# download
cd ~ || exit
curl -O "https://pkg-config.freedesktop.org/releases/$FILE.tar.gz"
tar zxf "$FILE.tar.gz" # FIX: not working

# configure
cd $FILE || exit
export LDFLAGS="-framework CoreFoundation"
./configure --with-internal-glib --prefix=/usr/local/pkgconfig

# make
make && sudo make install

# cleanup
cd ~ || exit
rm -rf $FILE "$FILE.tar.gz" # FIX: not working
