#!/bin/sh

set -e

for file in /etc/cont-init.d ; do
  source $file
done

source /etc/services.d/syslog/run
