#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://widget.stackbit.com/init.js 6102c48d98b80b00bdda4d5b

echo "stackbit-build.sh: finished build"
