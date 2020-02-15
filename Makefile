.PHONY: all docs install build

all: install build

docs: build
	cd docs/; jekyll serve --config _config.yml,_config-dev.yml

install: package-install.lock

package-install.lock: package.json
	npm install
	touch package-install.lock

build: install
	[ -d dist ] || mkdir dist
	npx node-sass --importer node_modules/node-sass-glob-importer/dist/cli.js styles.scss > dist/styles.css
