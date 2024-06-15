#!/bin/sh

echo "Building the base image..."
docker build -f Dockerfile.base -t local-jekyll-base .

echo "Building jekyll image..."
docker build --target jekyll -t local-jekyll .

echo "Building jekyll serve image..."
docker build -t local-jekyll-serve .

