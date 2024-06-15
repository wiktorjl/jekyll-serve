#!/bin/sh

docker run --rm --network host -e HOST=0.0.0.0 -e PORT=5555 -p 4000:4000 -v .:/site -t iamwiktor/local-jekyll-serve
