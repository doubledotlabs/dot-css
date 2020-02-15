dot.css
[![Build Status](https://github.com/doubledotlabs/dot-css/workflows/Build%20SCSS/badge.svg)](https://github.com/doubledotlabs/dot-css/actions)
[![NPM Package](https://img.shields.io/npm/v/@doubledotlabs/dot.css?color=red&logo=npm)](https://www.npmjs.com/package/@doubledotlabs/dot.css)
-----

[dot.css](https://doubledot.dev/dot-css/) is a simple CSS framework designed to be intuitive and effective.

## Usage

### NPM

You can install dot.css as an [NPM module](https://www.npmjs.com/package/@doubledotlabs/dot.css):

```sh
npm install @doubledotlabs/dot.css
```

This provides the SCSS files at `node_modules/@doubledotlabs/dot.css/styles.scss`. You can `@import` this file into
another SCSS file to set custom variables and integrate it with your site's build process.

### CDN

If you do not need to customize the CSS, you can include the compiled CSS in your HTML using [UNPKG](https://unpkg.com/browse/@doubledotlabs/dot.css@0.0.1/):

```html
<link rel="stylesheet" href="https://unpkg.com/@doubledotlabs/dot.css@0.0.5/dist/styles.css">
```

## Icons

These styles support the `.material-icons` web font, which can be used on your site using their
[installation instructions](https://google.github.io/material-design-icons/#setup-method-1-using-via-google-web-fonts),
or by copying the snippet below:

```html
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
```

## License

```
Copyright (c) 2020 dot-css Contributors

This Source Code Form is subject to the terms of the Mozilla Public
License, v. 2.0. If a copy of the MPL was not distributed with this
file, You can obtain one at https://mozilla.org/MPL/2.0/.
```
