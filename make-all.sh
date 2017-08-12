#!/bin/bash

set -e
cd `dirname $0`

cd btc && make && mv *.deb ../ && cd ..
cd bcc && make && mv *.deb ../ && cd ..
cd dash && make && mv *.deb ../ && cd ..
cd ltc && make && mv *.deb ../ && cd ..
cd regtest && make && mv *.deb ../ && cd ..
cd testnet && make && mv *.deb ../ && cd ..
cd zec && make && mv *.deb ../ && cd ..

