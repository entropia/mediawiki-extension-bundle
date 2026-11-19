FROM composer:2.11.2@sha256:511d2a96fce74de098b54224d59146fb8b6a7735d4e301f16c87c062e511900d

COPY . /

WORKDIR /

RUN for d in extensions/*/ skins/*/; do [ -f "$d/composer.json" ] && (cd "$d" && pwd && composer install --no-dev); done || true
