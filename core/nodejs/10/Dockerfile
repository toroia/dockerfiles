FROM toroia/alpine:3.10

LABEL description="Toroia | NodeJS | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.nodejs.10"

RUN apk add --no-cache \
  nodejs \
  yarn \
  && yarn global add \
  --non-interactive \
  nodemon \
  && curl -sfL https://install.goreleaser.com/github.com/tj/node-prune.sh | bash -s -- -b /usr/local/bin

COPY ./rootfs /

WORKDIR /app

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done \
  && node-clean /usr/share/node_modules
