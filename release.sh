#!/bin/bash

echo RUN!

curl -L https://github.com/Schniz/fnm/releases/latest/download/fnm-linux.zip -O
unzip fnm-linux.zip
chmod +x fnm
tar -czvf fnm-linux.tgz fnm
RAW_VERSION=$(./fnm -V)
VERSION=${RAW_VERSION:4}
echo $VERSION

gh release create "v$VERSION" fnm-linux.tgz
