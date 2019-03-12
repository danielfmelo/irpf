version=?
project=irfp:$(version)

build:
	docker build -t $(project) .

run: build
	docker run -it --rm \
		-e DISPLAY=$(DISPLAY) \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v $(HOME):/home/irpf \
		$(project)	
