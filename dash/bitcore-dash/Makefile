all:
	git clone https://github.com/dashpay/bitcore-dash.git
	cd bitcore-dash && git checkout 52dbcd31fb720596adc917f7b7b26d40575f0334
	cd bitcore-dash && rm -rf .git # Delete .git folder to reduce space
	# do not actually run install scripts, since they throw errors, we have to fix them manually first
	cd bitcore-dash && npm install --ignore-scripts
	# using zeromq, since zmq throws errors
	cd bitcore-dash && npm install --save zeromq
	# install new insight, so we don't have bitcore-lib version clash
	cd bitcore-dash && npm install --save "insight-api-dash@^0.5.0"
	# correct download script so it is runnable
	cat bitcore-dash/node_modules/bitcore-node-dash/scripts/download | dos2unix > bitcore-dash/node_modules/bitcore-node-dash/scripts/download2
	mv bitcore-dash/node_modules/bitcore-node-dash/scripts/download2 bitcore-dash/node_modules/bitcore-node-dash/scripts/download
	chmod +x bitcore-dash/node_modules/bitcore-node-dash/scripts/download
	# downloading and extracting to /download/ (script downloaded it to wrong place)
	sed -i 's/root_dir=.*$$/root_dir="\/download\/"/' bitcore-dash/node_modules/bitcore-node-dash/scripts/download
	# downloading new version
	sed -i 's/0.12.1/0.12.2/' bitcore-dash/node_modules/bitcore-node-dash/scripts/download
	# using zeromq, since zmq throws errors
	sed -i 's/require('"'"'zmq'"'"')/require('"'"'zeromq'"'"')/' bitcore-dash/node_modules/bitcore-node-dash/lib/services/bitcoind.js
	# actually run the scripts now
	cd bitcore-dash && npm rebuild
	mv bitcore-dash bitcore
	ls bitcore/node_modules/bitcore-node-dash
	cp -r /download/data/* bitcore/node_modules/bitcore-node-dash/bin
	rm -rf bitcore/node_modules/bitcore-node-dash/bin/*.gz
	rm -rf bitcore/node_modules/bitcore-node-dash/bin/dashcore-*/bin/dash-qt
	rm -rf bitcore/node_modules/bitcore-node-dash/bin/dashcore-*/bin/test_dash
	rm -rf bitcore/node_modules/bitcore-node-dash/test/*


clean:
	rm -fr bitcore
