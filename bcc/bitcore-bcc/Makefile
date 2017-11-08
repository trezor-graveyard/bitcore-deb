all:
	git clone https://github.com/satoshilabs/bitcore
	cd bitcore && git checkout 014c00cb5b3fe0e6f35493851d8f5040fb59fc18
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	rm -rf bitcore/node_modules/bitcore-node/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/bitcoin-qt
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/test_bitcoin
	rm -rf bitcore/node_modules/bitcore-node/test/*


clean:
	rm -fr bitcore
