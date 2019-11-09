.PHONY: all install build

all: install build

install: package-install.lock

package-install.lock: package.json
	npm install
	touch package-install.lock

build:
	node_modules/sass/sass.js styles.scss dist.css
