FROM toroia/php-fpm:7.3-phalcon4.0

LABEL description="Toroia | PHP - Phalconator | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.php-phalconator"

ENV PHALCONATOR_VERSION="develop"

RUN wget -c https://github.com/toroia/phalconator/archive/${PHALCONATOR_VERSION}.tar.gz -O - | tar -xz -C /tmp/ \
  && cd /tmp/phalconator-${PHALCONATOR_VERSION}/ext \
  && ./install \
  && echo "extension=phalconator.so" > /etc/php7/conf.d/04_phalconator.ini

RUN apk del .build-deps \
  && rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done
