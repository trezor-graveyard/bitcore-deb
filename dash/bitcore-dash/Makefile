all:
	git clone https://github.com/dashpay/bitcore-dash.git
	cd bitcore-dash && git checkout fbe398d11bf1f8152a8064940ff3467e61c77971
	cd bitcore-dash && rm -rf .git # Delete .git folder to reduce space
	cd bitcore-dash && yarn
	mv bitcore-dash bitcore
	mv ~/.bitcore/data/dashcore* bitcore/node_modules/bitcore-node-dash/bin/
	cd bitcore/node_modules/bitcore-node-dash/bin && ln -s dashcore-0.12.1/bin/dashd
	rm -rf bitcore/node_modules/bitcore-node-dash/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node-dash/bin/dashcore-*/bin/dash-qt
	rm -rf bitcore/node_modules/bitcore-node-dash/bin/dashcore-*/bin/test_dash
	rm -rf bitcore/node_modules/bitcore-node-dash/test/*


clean:
	rm -fr bitcore
