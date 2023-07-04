FROM alpine:3.18

MAINTAINER Corilus Cloud Operations <DG-HC-CareConnect-Hosting@corilus.be>

# Update system packages & install postfix
RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
        ca-certificates \
 && update-ca-certificates \
    \
 # Install Postfix dependencies & Postfix
 && apk add --no-cache \
        openssl postfix

# Install s6-overlay
RUN apk add --no-cache s6-overlay

COPY alpine/rootfs /

RUN chmod +x /etc/services.d/*/run \
             /etc/cont-init.d/*

EXPOSE 25 465 587

ENTRYPOINT ["/init"]

CMD ["/usr/libexec/postfix/master", "-d"]
