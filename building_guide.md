```bash
export NVM_DIR=$HOME/.nvm
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/install-nvm-exec
source /usr/share/nvm/bash_completion

nvm use v18

npm install --legacy-peer-deps
npm run package

cd release/build
sudo rm -r /usr/share/feishin/*
sudo tar -xf Feishin*x64.tar.xz -C /usr/share/feishin/ --strip-components=1
```
