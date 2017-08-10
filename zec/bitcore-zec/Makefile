all:
	git clone https://github.com/satoshilabs/bitcore.git
	cd bitcore && git checkout 2250127ffea05a1f25820537012ba415f055124b
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn
	wget -O zcashd "https://github.com/satoshilabs/bitcore-deb/releases/download/zec/zcashd"
	wget -O zcash-cli "https://github.com/satoshilabs/bitcore-deb/releases/download/zec/zcash-cli"
	mv zcashd bitcore/node_modules/bitcore-node-zcash/bin/
	mv zcash-cli bitcore/node_modules/bitcore-node-zcash/bin/
	cd bitcore/node_modules/bitcore-node-zcash/bin/ && strip zcash* && chmod +x zcash*

clean:
	rm -fr bitcore
