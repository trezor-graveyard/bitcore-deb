all:
	docker build -t bitcoind-build .
	rm -rf output && mkdir output
	docker run -t -v `pwd`/output:/output bitcoind-build /bin/sh -c 'cp /bitcoin/*.tar.gz /output'
	cd output && sha256sum bitcoin-0.14.0-linux64.tar.gz > SHA256SUMS && gpg --digest-algo sha256 --clearsign SHA256SUMS
