all:
	git clone https://github.com/satoshilabs/bitcore
	cd bitcore && git checkout 261f8533c9d659c2c0f2eb82f3a6dc3147e26814
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	rm -rf bitcore/node_modules/bitcore-node/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/bitcoin-qt
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/test_bitcoin
	rm -rf bitcore/node_modules/bitcore-node/test/*


clean:
	rm -fr bitcore
