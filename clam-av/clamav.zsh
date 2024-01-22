#!/usr/bin/env zsh

FILE=clamav-1.0.0-rc2

# download
cd ~ || exit
curl -LO "https://www.clamav.net/downloads/production/$FILE.tar.gz"
tar zxf $FILE.tar.gz

# build
cd $FILE || exit
mkdir build
cd build || exit
cmake
-D CMAKE_BUILD_TYPE=Release
-D OPTIMIZE=ON
-D BYTECODE_RUNTIME="interpreter"
-D CMAKE_INSTALL_PREFIX=/usr/local/clamXav/
-D ENABLE_JSON_SHARED=OFF
-D ENABLE_TESTS=ON
-D LIBCHECK_ROOT_DIR=/usr/local/check
-D LIBCHECK_INCLUDE_DIR=/usr/local/check/include/
-D LIBCHECK_LIBRARY=/usr/local/check/lib/libcheck.0.dylib
-D OPENSSL_ROOT_DIR=/usr/local/libressl/
-D OPENSSL_CRYPTO_LIBRARY=/usr/local/libressl/lib/libcrypto.50.dylib
-D OPENSSL_SSL_LIBRARY=/usr/local/libressl/lib/libssl.53.dylib
-D PCRE2_LIBRARY=/usr/local/pcre2/lib/libpcre2-8.0.dylib
-D PCRE2_INCLUDE_DIR=/usr/local/pcre2/include/
-D JSONC_LIBRARY=/usr/local/json-c/lib/libjson-c.5.dylib
-D JSONC_INCLUDE_DIR=/usr/local/json-c/include/json-c/
..

# make
make && sudo make test
sudo make install

# cleanup
cd ~ || exit
rm -rf $FILE "$FILE.tar.gz"
