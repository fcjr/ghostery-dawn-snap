DOCKERIO_USERNAME = fcjr
IMAGE_NAME = ghostery-dawn-snapcraft
FULL_IMAGE_NAME = $(DOCKERIO_USERNAME)/$(IMAGE_NAME)

build:
	docker build -t $(FULL_IMAGE_NAME) --no-cache --rm .

push:
	docker push $(FULL_IMAGE_NAME):latest

pull:

	docker pull $(FULL_IMAGE_NAME):latest