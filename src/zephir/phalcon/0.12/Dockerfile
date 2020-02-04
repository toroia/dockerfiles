FROM toroia/zephir-phalcon:0.12

LABEL description="Toroia | Zephir | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.zephir-phalcon.0-12"

RUN apk add --no-cache \
  php7-phalcon

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done
