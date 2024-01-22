#!/usr/bin/env zsh

FILE=json-c-0.16

# download
cd ~ || exit
curl -LO "https://s3.amazonaws.com/json-c_releases/releases/$FILE.tar.gz"
tar zxf $FILE.tar.gz

# build
cd $FILE || exit
mkdir build
cd build || exit
cmake -D CMAKE_INSTALL_PREFIX=/usr/local/json-c ..

# make
make && sudo make test
sudo make install

# link
sudo ln -s /usr/local/json-c/lib/libjson-c.5.dylib /usr/local/lib/

# cleanup
cd ~ || exit
rm -rf $FILE "$FILE.tar.gz"
