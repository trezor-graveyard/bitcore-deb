all:
	git clone https://github.com/satoshilabs/bitcore
	cd bitcore && git checkout 2465cb3a17fb42bdbad6c9ebd38dc23d9d360af0
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	rm -rf bitcore/node_modules/bitcore-node/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/bitcoin-qt
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/test_bitcoin
	rm -rf bitcore/node_modules/bitcore-node/test/*


clean:
	rm -fr bitcore
