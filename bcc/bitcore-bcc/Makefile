all:
	git clone https://github.com/satoshilabs/bitcore
	cd bitcore && git checkout f04209fb4d92752426fd8fb77e7dec04b55dfe0d
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	rm -rf bitcore/node_modules/bitcore-node/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/bitcoin-qt
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/test_bitcoin
	rm -rf bitcore/node_modules/bitcore-node/test/*


clean:
	rm -fr bitcore
