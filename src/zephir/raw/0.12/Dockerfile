FROM toroia/php-cli:7.3

LABEL description="Toroia | Zephir | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.zephir-raw.0-12"

ARG SRC_ZEPPARSER_URL="https://api.github.com/repos/phalcon/php-zephir-parser/releases/latest"
ARG PHAR_ZEPTOOLS_URL="https://api.github.com/repos/phalcon/zephir/releases/latest"

RUN apk add --no-cache \
  php7-pecl-psr \
  autoconf \
  automake \
  file \
  g++ \
  make \
  jq \
  php7-dev \
  re2c \
  libpcre32 \
  sudo

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
