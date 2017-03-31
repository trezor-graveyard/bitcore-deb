all:
	git clone https://github.com/satoshilabs/bitcore
	cd bitcore && git checkout 218a39f6ef836b2b008e482699fb93eb7fd31c2e
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && npm install .
	rm -rf bitcore/node_modules/bitcore-node/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/bitcoin-qt
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/test_bitcoin


clean:
	rm -fr bitcore
