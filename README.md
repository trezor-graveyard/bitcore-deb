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

Or you can use gdebi

* ```gdebi <package_name>```

Upgrade on target machine
-------------------------
* ```dpkg -i <package_name>```
* ```apt-get update && apt-get -f install```

Or use gdebi again

* ```gdebi <package_name>```

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
* Rename all files and folders from "bitcore-btc*" to "bitcore-<coin>*": ```find ./ -readable -writable -name "*bitcore-btc*" -exec rename 's/bitcore-btc/bitcore-<coin>/' {} \;```
* Update bitcoin.conf:
  * Change rpcport
  * Change ports in zmqpubrawtx, zmqpubrawtx
* Update bitcore-node.json:
  * Change listening port
  * Change ports in zmqpubrawtx, zmqpubrawtx
  * Change port to bitcoind in rpcport
* Update nginx:
  * Change port
  * Edit the server name
* Add new line to debian changelog (use dch -i)
* Modify installation procedure in bitcore-btc/Makefile, at least replace link to github repository.
* Search for all "bitcoin" and "btc" strings and consider if they need to be updated for given coin.
* Update registry below

UASF
----

Bitcoin with UASF flavor is not a separate package; to use UASF-bitcoin, just add

`bip148=1`

to config.

(Right now, even with bip148=0, the node will signal UASF. Sorry about that.)

This means that we cannot run UASF and non-UASF on the same computer. (But we can run regular BTC/UASF-BTC and ABC on the same computer, see below.)

Note about Bitcoin ABC
----

Bitcoin ABC has the same ports to p2p network as Bitcoin. To be able to run both BTC and ABC-BTC ("bitcoin cash") on the same computer, we needed to add `nolisten=1` to abc-bitcoin config.

The repos etc are named `bitcore-bcc` so grepping `bitcoin` or `btc` doesn't find it.

Registry of ports
-----------------

| coin    | insight port | RPC port | zmq port |
|---------|--------------|----------|----------|
| btc     | 3001         |  8332    | 28332    |
| dash    | 3006         |  8336    | 28336    |
| ltc     | 3004         |  8334    | 28334    |
| regtest | 3005         | 18335    | 28335    |
| testnet | 3002         | 18332    | 28333    |
| zec     | 3007         |  8337    | 28337    |
| bcc     | 3009         |  8339    | 28339    |
| tbcc    | 3010         |  8340    | 28340    |
| 2x      | 3011         |  8341    | 28341    |
