FROM toroia/php-cli:7.3

LABEL description="Toroia | PHP - FPM | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.php-fpm.7-3"

ENV PHP_MEMORY_LIMIT="128M" \
  FPM_PM="dynamic" \
  FPM_PM_MAX_CHILDREN="5" \
  FPM_PM_START_SERVERS="2" \
  FPM_PM_MIN_SPARE_SERVERS="1" \
  FPM_PM_MAX_SPARE_SERVERS="3"

RUN apk update \
  && apk add --no-cache \
  nginx \
  php7-fpm

COPY rootfs /

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done

EXPOSE 80
