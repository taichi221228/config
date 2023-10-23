#!/usr/bin/env zsh

FILE=pkg-config-0.29.2

# donwload
cd ~
curl -O "https://pkg-config.freedesktop.org/releases/$FILE.tar.gz"
tar zxf "$FILE.tar.gz"

# configure
cd $FILE
export LDFLAGS="-framework CoreFoundation"
./configure --with-internal-glib --prefix=/usr/local/pkgconfig

# make
make && sudo make install

# cleanup
cd ~
rm -rf $FILE "$FILE.tar.gz"
