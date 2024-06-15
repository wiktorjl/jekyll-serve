#!/bin/sh

docker run --rm --network host -e VHOST=0.0.0.0 -e PORT=4000 -p 4000:4000 -v .:/site -t iamwiktor/local-jekyll-serve
