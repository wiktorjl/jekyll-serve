FROM local-jekyll-base as jekyll

EXPOSE 4000

WORKDIR /site

ENTRYPOINT [ "jekyll" ]

CMD [ "--help" ]

# build from the image we just built with different metadata
FROM jekyll as jekyll-serve

# on every container start, check if Gemfile exists and warn if it's missing
ENTRYPOINT [ "docker-entrypoint.sh" ]

USER root

RUN chown -R 1000:1000 /site

USER $USERNAME

# Ensure VHOST and PORT environment variables are set correctly
ENV VHOST=${VHOST:-default_host}
ENV PORT=${PORT:-4000}

CMD [ "bash", "-c", "bundle exec jekyll serve --force_polling -H $VHOST -P $PORT" ]
