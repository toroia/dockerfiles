FROM toroia/alpine:edge

LABEL description="Toroia | NodeJS | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.nodejs.14"

RUN apk add --no-cache \
  nodejs-current \
  yarn \
  && yarn global add \
  --non-interactive \
  nodemon \
  && curl -sfL https://install.goreleaser.com/github.com/tj/node-prune.sh | bash -s -- -b /usr/local/bin

WORKDIR /app

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done \
  && yarn cache clean \
  && node-prune /usr/share/node_modules
