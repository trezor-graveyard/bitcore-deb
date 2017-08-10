all:
	git clone https://github.com/runn1ng/bitcore-node-zcash.git
	cd bitcore-node-zcash && git checkout bc1dbd74eb4a2af54a55a235e0bb7be44ddcb931
	cd bitcore-node-zcash && rm -rf .git # Delete .git folder to reduce space
	cd bitcore-node-zcash && yarn
	mv bitcore-node-zcash bitcore
	wget -O zcashd "https://github.com/satoshilabs/bitcore-deb/releases/download/zec/zcashd"
	wget -O zcash-cli "https://github.com/satoshilabs/bitcore-deb/releases/download/zec/zcash-cli"
	mv zcashd bitcore/bin/
	mv zcash-cli bitcore/bin/
	cd bitcore/bin && strip zcash* && chmod +x zcash*
	cd bitcore && rm -rf .git # Delete .git folder to reduce space
	cd bitcore && yarn

clean:
	rm -fr bitcore
