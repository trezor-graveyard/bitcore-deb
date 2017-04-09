all:
	git clone https://github.com/satoshilabs/bitcore
	cd bitcore && git checkout 9dfb08d7daf02ab731e10674fc7cdb5e7527311c
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	rm -rf bitcore/node_modules/bitcore-node/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/bitcoin-qt
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/test_bitcoin


clean:
	rm -fr bitcore
