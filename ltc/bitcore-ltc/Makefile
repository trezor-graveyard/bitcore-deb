all:
	git clone https://github.com/litecoin-project/litecore
	mv litecore bitcore
	cd bitcore && git checkout d6dfe80a5d8befef48287ded138a67e86ce48b15
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	rm -rf bitcore/node_modules/litecore-node/bin/*.gz
	rm -rf bitcore/node_modules/litecore-node/bin/litecoin-*/bin/litecoin-qt
	rm -rf bitcore/node_modules/litecore-node/bin/litecoin-*/bin/test_litecoin
	rm -rf bitcore/node_modules/litecore-node/test/*


clean:
	rm -fr bitcore
