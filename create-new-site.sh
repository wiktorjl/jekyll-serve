#!/bin/sh


echo "Creating new site..."
docker run -v .:/site iamwiktor/local-jekyll new --force .
