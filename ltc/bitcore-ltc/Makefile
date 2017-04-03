all:
	git clone https://github.com/litecoin-project/litecore
	mv litecore bitcore
	cd bitcore && git checkout 0478e2ee8f8c5dfdccbbce1b0c29e70c827b5314
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && npm install .
	rm -rf bitcore/node_modules/litecore-node/bin/*.gz
	rm -rf bitcore/node_modules/litecore-node/bin/litecoin-*/bin/litecoin-qt
	rm -rf bitcore/node_modules/litecore-node/bin/litecoin-*/bin/test_litecoin


clean:
	rm -fr bitcore
