FROM composer:2.11.2@sha256:cd3a90dc5624c59a2f9ddf80dad08569f06416db31de519024f249d63bca554b

COPY . /

WORKDIR /

RUN for d in extensions/*/ skins/*/; do [ -f "$d/composer.json" ] && (cd "$d" && pwd && composer install --no-dev); done || true
