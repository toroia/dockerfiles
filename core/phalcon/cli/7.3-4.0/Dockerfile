FROM toroia/php-cli:7.3

LABEL description="Toroia | PHP - Phalcon | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.php-phalcon.4-0"

ENV APP_PATH="/src/public" \
  PHALCON_VERSION="4.0.0-rc.1" \
  PSR_VERSION="0.7.0"

RUN apk add --no-cache --virtual \
  .build-deps \
  autoconf \
  file \
  g++ \
  make \
  php7-dev \
  re2c \
  sudo

RUN wget -c https://github.com/jbboehr/php-psr/archive/v${PSR_VERSION}.tar.gz -O - | tar -xz -C /tmp/ \
  && cd /tmp/php-psr-${PSR_VERSION} \
  && phpize \
  && ./configure \
  && make \
  && make install \
  && echo "extension=psr.so" > /etc/php7/conf.d/02_psr.ini

RUN wget -c https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz -O - | tar -xz -C /tmp/ \
  && cd /tmp/cphalcon-${PHALCON_VERSION}/build \
  && ./install \
  && echo "extension=phalcon.so" > /etc/php7/conf.d/03_phalcon.ini

RUN apk del .build-deps \
  && rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done
