#!/usr/bin/env bash

rm -rf pui-dist
pushd ../pivotal-ui
  yarn install --no-progress
  gulp build
  mv dist ../pui-styleguide/pui-dist
popd

rm -rf node_modules
yarn cache clean
yarn --no-progress
./node_modules/.bin/webpack --config ./frontend_webpack.config.babel.js -p

mkdir -p dist

cp public/* dist/
cp -R static dist/