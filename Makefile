.PHONY: build run
all: build

prebuild:
	./bin/cardgen.sh

build: prebuild
	HUGO_ENV=production hugo -d docs

run:
	hugo server -D
