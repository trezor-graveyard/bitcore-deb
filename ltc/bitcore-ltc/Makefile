all:
	git clone https://github.com/litecoin-project/litecore
	mv litecore bitcore
	cd bitcore && git checkout b9874b4c90c2d4192de902a447d7a566dffb20f4
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && npm install .
	rm -rf bitcore/node_modules/litecore-node/bin/*.gz
	rm -rf bitcore/node_modules/litecore-node/bin/litecoin-*/bin/litecoin-qt
	rm -rf bitcore/node_modules/litecore-node/bin/litecoin-*/bin/test_litecoin


clean:
	rm -fr bitcore
