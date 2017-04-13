Bitcore-deb
===========

Build DEB for coin
------------------
* Build requirements: make, docker.io
* Run "make" in coin subdirectory
* DEB file appear in coin subdirectory

First installation on target machine
------------------------------------
* ```apt-get install apt-transport-https && dpkg -i <package_name>```
* ```apt-get update && apt-get -f install```

Upgrade on target machine
-------------------------
* ```dpkg -i <package_name>```
* ```apt-get update && apt-get -f install```


Updating bitcore version for coin
---------------------------------
* Change version in git checkout in <coin>/bitcore-<coin>/Makefile
* Create a new entry in <coin>/bitcore-<coin>/debian/changelog by using 'dch -i'
* Then build as usual

Adding new coin
---------------
Prerequisite is having github repo with forked Insight for given coin. Things may be easy until developers don't change a single appearance of "bit" to name of their altcoin in whole codebase, as happen in Litecore for Litecoin. Then you'll need to dig into rabbit hole a bit more.

* Copy "btc" directory to <coin>/
* Replace "bitcore-btc" by "bitcore-<altcoin>" everywhere: ```find ./ -type f -readable -writable -exec sed -i "s/bitcore-btc/bitcore-<coin>/g" {} \;```
* Rename all files and folders from "bitcore-btc*" to "bitcore-<coin>*": ```find ./ -readable -writable -name "bitcore-btc*" -exec rename 's/bitcore-btc/bitcore-<coin>/' {} \;```
* Update bitcoin.conf:
  * Change rpcport
  * Change ports in zmqpubrawtx, zmqpubrawtx
* Update bitcore-node.json:
  * Change listening port
  * Change ports in zmqpubrawtx, zmqpubrawtx
  * Change port to bitcoind in rpcport
* Add new line to debian changelog (use dch -i)
* Modify installation procedure in bitcore-btc/Makefile, at least replace link to github repository.
* Search for all "bitcoin" strings and consider if they need to be updated for given coin.
* Update registry below

Registry of ports
-----------------

| coin    | insight port | RPC port | zmq port |
|---------|--------------|----------|----------|
| btc     | 3001         |  8332    | 28332    |
| test    | 3002         | 18332    | 28333    |
| ltc     | 3004         |  8334    | 28334    |
| regtest | 3005         | 18335    | 28335    |
