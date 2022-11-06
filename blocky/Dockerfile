ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN apk add --no-cache \
        wget go make

ARG BLOCKY_VERSION=0.19
RUN curl -L -f -s "https://github.com/0xERR0R/blocky/archive/refs/tags/v$BLOCKY_VERSION.tar.gz" \
        | tar zxvf - \
        && cd blocky-${BLOCKY_VERSION} \
        && make build \
        && mv bin/blocky /usr/local/bin/blocky \
        && chmod a+x /usr/local/bin/blocky \
        && cd .. && rm -R blocky-${BLOCKY_VERSION}/

RUN apk del --quiet \
        make wget go

WORKDIR /data

COPY rootfs /
