FROM alpine:3.10

LABEL description="Toroia | Alpine | Docker image" \
  maintainer="Toroia Team <contact@toroia.fr>" \
  vendor=Toroia \
  name="fr.toroia.core.alpine.3-10"

ENV TIMEZONE=Europe/Paris \
  LANGUAGE=fr_FR.UTF-8 \
  LANG=fr_FR.UTF-8 \
  LC_ALL=fr_FR.UTF-8 \
  TERM=xterm

RUN apk update \
  && apk upgrade --force \
  && apk add --no-cache \
    bash \
    bash-completion \
    ca-certificates \
    coreutils \
    supervisor \
    gettext \
    musl-utils \
    tzdata \
    openssl \
    curl \
  && update-ca-certificates 2>/dev/null || true \
  && ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
  && echo "${TIMEZONE}" | tee /etc/timezone

COPY ./rootfs /

RUN rm -rf /tmp/* /var/cache/apk/* \
  && find /var/log -type f | while read f; do echo -n '' > ${f}; done

CMD ["/usr/bin/supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
