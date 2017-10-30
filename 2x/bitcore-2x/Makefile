all:
	git clone https://github.com/satoshilabs/bitcore
	cd bitcore && git checkout 6916554663ed7cd92bb55ac518c9f6c942646d3d
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	rm -rf bitcore/node_modules/bitcore-node/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/bitcoin-qt
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/test_bitcoin
	rm -rf bitcore/node_modules/bitcore-node/test/*

clean:
	rm -fr bitcore
