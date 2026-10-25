FROM composer:2.2.30@sha256:db5a72680c556826fdf498dc16e67b55c10da56928de06929cbc431b81271efb

COPY . /

RUN find extensions skins -name composer.json -type f -execdir composer update --no-dev \;
