FROM toroia/alpine

LABEL description="Toroia | NodeJS | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.nodejs"

RUN apk update \
  && apk add --no-cache \
  nodejs \
  npm

RUN npm install -g \
  --no-optional \
  nodemon

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done
