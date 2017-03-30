IMG_NAME=bitcore_build
NO_CACHE=false

.PHONY: clean

all:
	docker build --no-cache=$(NO_CACHE) --rm -t "$(IMG_NAME)" .
	docker run --name="$(IMG_NAME)" -d "$(IMG_NAME)" /bin/true
	docker export bitcore_build | tar --wildcards -x 'root/*.deb'
	docker rm bitcore_build
	docker rmi bitcore_build
	mv ./root/*.deb .
	rmdir ./root

clean:
	rm *.deb
