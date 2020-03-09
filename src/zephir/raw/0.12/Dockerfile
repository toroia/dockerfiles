FROM toroia/php-cli:7.3

LABEL description="Toroia | Zephir | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.zephir-raw.0-12"

ARG SRC_ZEPPARSER_URL="https://api.github.com/repos/phalcon/php-zephir-parser/releases/latest"
ARG PHAR_ZEPTOOLS_URL="https://api.github.com/repos/phalcon/zephir/releases/latest"

RUN apk add --no-cache \
  autoconf \
  automake \
  file \
  g++ \
  make \
  jq \
  php7-pear \
  php7-dev \
  php7-intl \
  php7-sqlite3 \
  php7-pdo_sqlite \
  php7-pecl-redis \
  php7-pecl-imagick \
  php7-pecl-msgpack \
  php7-pecl-igbinary \
  re2c \
  libpcre32 \
  sudo

RUN pecl install psr-0.7.0 && \
  echo "extension=psr.so" >> /etc/php7/conf.d/20_psr.ini

RUN pecl install mongodb && \
  echo "extension=mongodb.so" >> /etc/php7/conf.d/40_mongodb.ini

RUN curl -sL ${SRC_ZEPPARSER_URL} | jq -r '.tarball_url' | \
  xargs wget -O - | tar -xz -C /tmp/ \
  && cd /tmp/phalcon-php-zephir-parser* \
  && phpize \
  && ./configure \
  && make \
  && make install \
  && echo "[Zephir Parser]" > /etc/php7/conf.d/00_zephir.ini \
  && echo "extension=zephir_parser.so" >> /etc/php7/conf.d/00_zephir.ini

RUN curl -sL ${PHAR_ZEPTOOLS_URL} | jq -r '.assets[].browser_download_url' | \
  xargs wget -O /usr/local/bin/zephir \
  && chmod +x /usr/local/bin/zephir

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done
