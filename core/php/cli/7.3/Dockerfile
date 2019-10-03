FROM toroia/alpine:3.10

LABEL description="Toroia | PHP - CLI | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.php-cli.7-3"

RUN apk add --no-cache \
  composer \
  php7 \
  php7-ctype \
  php7-fileinfo \
  php7-json \
  php7-mbstring \
  php7-openssl \
  php7-session \
  php7-opcache \
  php7-pdo \
  php7-simplexml \
  php7-sodium \
  php7-tokenizer \
  php7-xmlwriter \
  php7-zip

COPY rootfs /

WORKDIR /app

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done
