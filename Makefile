.PHONY: all docs install build

all: install build

docs:
	cd docs/; jekyll serve --config _config.yml,_config-dev.yml

install: package-install.lock

package-install.lock: package.json
	npm install
	touch package-install.lock

build: install
	node_modules/sass/sass.js styles.scss dist.css
