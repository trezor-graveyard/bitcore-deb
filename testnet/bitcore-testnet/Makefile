all:
	git clone https://github.com/satoshilabs/bitcore
	cd bitcore && git checkout 937997a89069ed392f4862df16a8dec5c0242cef
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	rm -rf bitcore/node_modules/bitcore-node/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/bitcoin-qt
	rm -rf bitcore/node_modules/bitcore-node/bin/bitcoin-*/bin/test_bitcoin


clean:
	rm -fr bitcore
