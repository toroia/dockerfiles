FROM docker:19.03.1

LABEL description="Toroia | Docker | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.docker.19-03-1"

ENV DOCKER_HOST="tcp://docker:2375" \
  DOCKER_TLS_CERTDIR=""

RUN apk update \
  && apk upgrade --force \
  && apk add --no-cache \
    make

COPY ./rootfs /

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done
