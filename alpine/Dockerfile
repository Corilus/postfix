FROM alpine:3.18

MAINTAINER Corilus Cloud Operations <DG-HC-CareConnect-Hosting@corilus.be>

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
        ca-certificates \
 && update-ca-certificates \
    \
 # Install Postfix dependencies & Postfix
 && apk add --no-cache \
        openssl postfix

EXPOSE 25 465 587

CMD ["/usr/libexec/postfix/master", "-d"]
