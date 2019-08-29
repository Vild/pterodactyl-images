FROM        quay.io/parkervcp/pterodactyl-images:base_alpine

LABEL       author="Dan Printzell" maintainer="egg@vild.io"

USER root
RUN set -x && \
		apk add --update --no-cache --virtual runtime-dependencies \
		boost \
		ca-certificates \
		cyrus-sasl \
		icu \
		su-exec \
		tini \
		tzdata \
		build-base \
		cmake \
		icu-dev \
		libressl-dev \
		perl \
		python3 \
		zlib-dev

USER container