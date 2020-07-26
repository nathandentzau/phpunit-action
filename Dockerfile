FROM composer:latest

LABEL version="9.0.0"
LABEL repository="https://github.com/nathandentzau/phpunit"
LABEL homepage="https://github.com/nathandentzau/phpunit"
LABEL maintainer="nathandentzau <nathan@dentzau.com>"

RUN composer global require --no-progress phpunit/phpunit ^9.0
COPY entrypoint /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]
