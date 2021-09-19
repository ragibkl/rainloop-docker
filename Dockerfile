FROM alpine as builder
RUN apk add wget unzip
RUN wget http://www.rainloop.net/repository/webmail/rainloop-community-latest.zip
RUN mkdir /src
RUN unzip rainloop-community-latest.zip -d /src


FROM php:8-apache
COPY --from=builder /src /var/www/html
COPY scripts/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]
