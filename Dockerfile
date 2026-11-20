FROM composer:2.11.2@sha256:919efe8e62179c71dfd31fad035fd671fe7454211c6b2aa30a10af0ab4acedba

COPY . /

WORKDIR /

RUN for d in extensions/*/ skins/*/; do [ -f "$d/composer.json" ] && (cd "$d" && pwd && composer install --no-dev); done || true
