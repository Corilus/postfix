FROM debian:bullseye-slim

MAINTAINER Corilus Cloud Operations <DG-HC-CareConnect-Hosting@corilus.be>

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y ca-certificates \
 && update-ca-certificates

RUN apt-get install -y postfix

EXPOSE 25 465 587

CMD ["/usr/libexec/postfix/master", "-d"]
