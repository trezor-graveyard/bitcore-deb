all:
	git clone https://github.com/satoshilabs/bitcore
	cd bitcore && git checkout e9cb49c19264129426936f4ee2f2e05405935ee2
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	rm -rf bitcore/node_modules/bitcore-node/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/bitcoin-qt
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/test_bitcoin
	rm -rf bitcore/node_modules/bitcore-node/test/*

clean:
	rm -fr bitcore
