.PHONY: all docs watch-docs watch-sass install build

NPM := pnpm
NPX := pnpx
ifeq (, $(shell which pnpm))
NPM = npm
NPX = npx
endif

all: install build

docs:
	$(MAKE) -j2 watch-docs watch-sass

watch-docs:
	cd docs/; bundle exec jekyll serve --config _config.yml,_config-dev.yml

watch-sass:
	[ -d docs/dist ] || mkdir docs/dist
	${NPX} sass scss/styles.scss docs/dist/styles.css --watch

install: package-install.lock

package-install.lock: package.json
	${NPM} install
	touch package-install.lock

build: install
	[ -d build ] || mkdir build
	${NPX} sass@1.53.0 scss/styles.scss build/styles.css
	[ -d dist ] || mkdir dist
	npx postcss-cli@10.0.0 build/styles.css -o dist/styles.css
