PLATFORM ?= linux/amd64

.PHONY: openjdk-17.0.11-ubuntu openjdk-17.0.11-ubuntu-fonts
openjdk-17.0.11-ubuntu:
	chmod +x ./scripts/openjdk-17.0.11-ubuntu.sh
	./scripts/openjdk-17.0.11-ubuntu.sh

openjdk-17.0.11-ubuntu-fonts:
	docker build --platform $(PLATFORM) -t openjdk:17.0.11-ubuntu-fonts -f openjdk/17/ubuntu/fonts.Dockerfile .

python-3.12.10-slim-fonts:
	docker build --platform $(PLATFORM) -t python:3.12.10-slim-fonts -f python/3.12.10-slim/fonts.Dockerfile .
