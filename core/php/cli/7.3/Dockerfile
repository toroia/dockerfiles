FROM toroia/alpine:3.10

LABEL description="Toroia | PHP | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.php-cli.7-3"

RUN apk update \
  && apk add --no-cache \
  composer \
  php7 \
  php7-fileinfo \
  php7-json \
  php7-mbstring \
  php7-openssl \
  php7-session \
  php7-opcache \
  php7-sodium \
  php7-zip

COPY rootfs /

WORKDIR /app

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done
