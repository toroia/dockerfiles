FROM toroia/php-cli:7.3

LABEL description="Toroia | PHP - FPM | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.php-fpm.7-3"

ENV SERVER_NAME="localhost" \
  NGINX_MBSIZE="5m" \
  APP_PATH="/"

RUN apk update \
  && apk add --no-cache \
  nginx \
  php7-fpm

COPY rootfs /

RUN envsubst < /etc/nginx/conf.d/php-fpm.conf.example > /etc/nginx/conf.d/default.conf

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done

EXPOSE 80
