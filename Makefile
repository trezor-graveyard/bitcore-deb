IMG_NAME=bitcore3_build
NO_CACHE=false

.PHONY: clean

all:
	docker build --no-cache=$(NO_CACHE) --rm -t "$(IMG_NAME)" .
	docker run --name="$(IMG_NAME)" -d "$(IMG_NAME)" /bin/true
	docker export bitcore3_build | tar --wildcards -x 'root/*.deb'
	docker rm bitcore3_build
	docker rmi bitcore3_build
	mv ./root/*.deb .
	rmdir ./root

clean:
	rm *.deb
