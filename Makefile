.PHONY: openjdk-17.0.11-ubuntu
openjdk-17.0.11-ubuntu:
	chmod +x ./scripts/openjdk-17.0.11-ubuntu.sh
	./scripts/openjdk-17.0.11-ubuntu.sh

openjdk-17.0.11-ubuntu-fonts:
	docker build -t openjdk:17.0.11-ubuntu-fonts -f openjdk/17/ubuntu/fonts.Dockerfile .
