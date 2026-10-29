FROM composer:2.10.3@sha256:2cf275428757e5435a667bfc0d038b14520ca02be2b1b70d44a05c8c19e2de48

COPY . /

WORKDIR /

RUN for d in extensions/*/ skins/*/; do [ -f "$d/composer.json" ] && (cd "$d" && pwd && composer install --no-dev); done || true
