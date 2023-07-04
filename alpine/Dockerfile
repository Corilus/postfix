FROM alpine:3.18

MAINTAINER Corilus Cloud Operations <DG-HC-CareConnect-Hosting@corilus.be>

# Update system packages
RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
        ca-certificates \
 && update-ca-certificates

# Install Postfix & Postfix dependencies
RUN apk add --no-cache \
        postfix openssl postfix-pcre

# Install s6-overlay
RUN apk add --no-cache s6-overlay

COPY alpine/rootfs /

RUN chmod +x /etc/services.d/*/run \
             /etc/cont-init.d/*

EXPOSE 25 465 587

ENTRYPOINT ["/init"]

CMD ["/usr/libexec/postfix/master", "-d"]
