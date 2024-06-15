#!/bin/sh

docker run --rm -p 4000:4000 -v .:/site -t iamwiktor/local-jekyll-serve
