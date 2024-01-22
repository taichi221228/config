#!/usr/bin/env zsh

FILE=cmake-3.27.1

# download
cd ~ || exit
curl -LO "https://github.com/Kitware/CMake/releases/download/v3.27.1/$FILE.tar.gz"
tar xzf "$FILE.tar.gz" # FIX: not working

# bootstrap
cd $FILE || exit
./bootstrap --prefix=/usr/local/cmake

# make
make && sudo make install

# cleanup
cd ~ || exit
rm -rf $FILE "$FILE.tar.gz" # FIX: not working
