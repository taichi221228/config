#!/usr/bin/env zsh

FILE=cmake-3.27.1

# download
cd ~
curl -LO "https://github.com/Kitware/CMake/releases/download/v3.27.1/$FILE.tar.gz"
tar xzf "$FILE.tar.gz"

# bootstrap
cd $FILE
./bootstrap --prefix=/usr/local/cmake

# make
make && sudo make install

# cleanup
cd ~
rm -rf $FILE "$FILE.tar.gz"
