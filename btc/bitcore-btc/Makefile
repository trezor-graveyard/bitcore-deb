all:
	git clone https://github.com/satoshilabs/bitcore
	cd bitcore && git checkout ca362f0e0841c5b0ca27c5f228ffe538f07fdb32
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	rm -rf bitcore/node_modules/bitcore-node/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/bitcoin-qt
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/test_bitcoin
	rm -rf bitcore/node_modules/bitcore-node/test/*

clean:
	rm -fr bitcore
