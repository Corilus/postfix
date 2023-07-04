FROM debian:bullseye-slim

MAINTAINER Corilus Cloud Operations <DG-HC-CareConnect-Hosting@corilus.be>

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y ca-certificates \
 && update-ca-certificates

RUN apt-get install -y postfix

COPY debian/rootfs /

RUN chmod +x /etc/services.d/*/run \
             /etc/cont-init.d/*

EXPOSE 25 465 587

ENTRYPOINT ["/init.sh"]

CMD ["/usr/libexec/postfix/master", "-d"]
