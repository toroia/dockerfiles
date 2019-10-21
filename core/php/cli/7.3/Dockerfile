FROM toroia/alpine:3.10

LABEL description="Toroia | PHP - CLI | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.php-cli.7-3"

ENV PHP_MEMORY_LIMIT="-1" \
  PHP_ERROR_REPORTING="E_ALL & ~E_DEPRECATED & ~E_STRICT" \
  PHP_DISPLAY_ERRORS="Off" \
  PHP_DISPLAY_STARTUP_ERRORS="Off" \
  PHP_DATE_TIMEZONE="Europe/Paris" \
  PHP_UPLOAD_MAX_FILESIZE="2M" \
  PHP_SESSION_COOKIE_DOMAIN="" \
  PHP_MAX_EXECUTION_TIME="30" \
  PHP_MAX_INPUT_TIME="60" \
  PHP_POST_MAX_SIZE="8M"

ARG PHP_SECURITY_CHECKER_URL="https://get.sensiolabs.org/security-checker.phar"

RUN apk add --no-cache \
  composer \
  php7 \
  php7-ctype \
  php7-dom \
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
  php7-xml \
  php7-xmlwriter \
  php7-zip \
  && wget -c ${PHP_SECURITY_CHECKER_URL} -O /usr/local/bin/security-checker \
  && chmod +x /usr/local/bin/security-checker

COPY rootfs /

WORKDIR /app

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done
