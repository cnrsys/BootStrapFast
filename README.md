# BootStrapFast WordPress Theme

[![CircleCI](https://circleci.com/gh/cnrsys/BootStrapFast.svg?style=shield)](https://circleci.com/gh/cnrsys/BootStrapFast)
[![Dashboard BootStrapFast](https://img.shields.io/badge/dashboard-BootStrapFast-yellow.svg)](https://dashboard.pantheon.io/sites/f916572b-745e-44d1-b2a3-5ae6896b13ac#dev/code)
[![Dev Site BootStrapFast](https://img.shields.io/badge/site-BootStrapFast-blue.svg)](http://dev-BootStrapFast.pantheonsite.io/)

### Pre-requisites

1) Lando
2) Gulp
3) Pantheon machine token
4) Github token
5) CircleCI token
6) Node Version Manager & NodeJS

## Local initial setup

1) Git clone this repo
2) lando start
3) lando terminus auth:login --machine-token=
4) lando pull --code=none --files=none --database=dev
5) `cd web/wp-content/themes/bootstrapfast` then `gulp watch`
6) . ~/.nvm/nvm.sh` and `nvm use 8`
7) Run npm install -g npm@latest
8) Run npm install -g gulp bower
9) Run npm install
10) Run bower install

## Updating core, installing theme or plugins

1) Update composer.json
2) lando composer update

## Theme test data sources if you need to reset dummy data for testing

You need to activate plugin

### Option 1
From https://codex.wordpress.org/Theme_Unit_Test

https://raw.githubusercontent.com/WPTRT/theme-unit-test/master/themeunittestdata.wordpress.xml

### Option 2
From https://github.com/poststatus/wptest
