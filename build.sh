#!/usr/bin/bash

export NVM_DIR=$HOME/.nvm
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/install-nvm-exec
source /usr/share/nvm/bash_completion

set +x

nvm use v18 || exit
npm install --legacy-peer-deps
npm run package

cd release/build || exit
sudo rm -r /usr/share/feishin/* && sudo tar -xf Feishin*x64.tar.xz -C /usr/share/feishin/ --strip-components=1

