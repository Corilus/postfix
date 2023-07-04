FROM debian:bullseye-slim

MAINTAINER Corilus Cloud Operations <DG-HC-CareConnect-Hosting@corilus.be>

# Update system packages
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y ca-certificates \
 && update-ca-certificates

# Install Postfix & Postfix dependencies
RUN apt-get install -y postfix openssl libldap-2.4.2 libmariadb-dev libpcre3 libsqlite3-0

# Install s6-overlay
RUN apt-get install s6-overlay

COPY debian/rootfs /

RUN chmod +x /etc/services.d/*/run \
             /etc/cont-init.d/*

EXPOSE 25 465 587

ENTRYPOINT ["/init"]

CMD ["/usr/libexec/postfix/master", "-d"]
