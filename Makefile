.PHONY: build run
all: build

prebuild:
	tcardgen -f font/M_PLUS_Rounded_1c \
		-c tcardgen/config.yaml \
		-o static/img \
		-x 100 \
		-t tcardgen/qtemplate.png \
		content/answer/*.md
build: prebuild
	HUGO_ENV=production hugo -d docs

run:
	hugo server -D
