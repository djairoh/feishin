#!/usr/bin/bash
set -xe

pnpm install
pnpm run package:linux

cd dist
sudo rm -r /usr/share/feishin/* && sudo tar -xf Feishin*x64.tar.xz -C /usr/share/feishin/ --strip-components=1

