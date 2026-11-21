FROM composer:2.11.2@sha256:50ea4d33fdcde1adb0f045547295faa1548b33872e5f789dae5b02ce2fb5de93

COPY . /

WORKDIR /

RUN for d in extensions/*/ skins/*/; do [ -f "$d/composer.json" ] && (cd "$d" && pwd && composer install --no-dev); done || true
