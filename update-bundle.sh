#!/bin/sh

echo "When inside the docker, type 'bundle install' to update dependencies"
read -p "PRESS ENTER TO CONTINUE"
docker run -p 4000:4000 -v .:/site -it --entrypoint /bin/bash iamwiktor/local-jekyll
