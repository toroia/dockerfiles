FROM toroia/php-cli:7.3

LABEL description="Toroia | Zephir | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.zephir.7-3"

ARG ZEPPARSER_VERSION="1.3.2"
ARG PHAR_ZEPTOOLS_URL="https://github.com/phalcon/zephir/releases/download/0.12.12/zephir.phar"

RUN apk add --no-cache \
  autoconf \
  automake \
  file \
  g++ \
  make \
  php7-dev \
  re2c \
  libpcre32 \
  sudo

RUN wget -c https://github.com/phalcon/php-zephir-parser/archive/v${ZEPPARSER_VERSION}.tar.gz -O - | tar -xz -C /tmp/ \
  && cd /tmp/php-zephir-parser-${ZEPPARSER_VERSION} \
  && phpize \
  && ./configure \
  && make \
  && make install \
  && echo "[Zephir Parser]" > /etc/php7/conf.d/00_zephir.ini \
  && echo "extension=zephir_parser.so" >> /etc/php7/conf.d/00_zephir.ini

RUN wget -c ${PHAR_ZEPTOOLS_URL} -O /usr/local/bin/zephir \
  && chmod +x /usr/local/bin/zephir
