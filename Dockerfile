# Dockerfile
FROM local-jekyll-base as jekyll

# The rest of your Dockerfile remains the same
EXPOSE 4000

WORKDIR /site

ENTRYPOINT [ "jekyll" ]

CMD [ "--help" ]

# build from the image we just built with different metadata
FROM jekyll as jekyll-serve

# on every container start, check if Gemfile exists and warn if it's missing
ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]
