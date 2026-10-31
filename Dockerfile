FROM composer:2.11.1@sha256:537fb03057ed901ae06bde7ef25af348903485ae1acc7fc789b80d8bac666f35

COPY . /

WORKDIR /

RUN for d in extensions/*/ skins/*/; do [ -f "$d/composer.json" ] && (cd "$d" && pwd && composer install --no-dev); done || true
