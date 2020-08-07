FROM toroia/php-cli:7.4

LABEL description="Toroia | PHP - CLI | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.phalcon-cli.7_4-4_0"

RUN apk add --no-cache \
  php7-pecl-psr \
  php7-phalcon

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done
