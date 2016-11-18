#!/bin/sh

set -e


if [ -z "${PORT}" ] ; then export p=1234  ; else export p=$PORT ; fi; 

sed -i "s/addr: :5000/addr: :$p/g" /etc/docker/registry/config.yml

case "$1" in
    *.yaml|*.yml) set -- registry serve "$@" ;;
    serve|garbage-collect|help|-*) set -- registry "$@" ;;
esac

exec "$@"
