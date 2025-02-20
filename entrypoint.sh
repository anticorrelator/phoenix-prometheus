#!/bin/sh

sed -e "s|PHOENIX_URL|$PHOENIX_URL|g" \
    /etc/prometheus/prometheus.yml.template > /etc/prometheus/prometheus.yml

cat /etc/prometheus/prometheus.yml

exec /bin/prometheus "$@"
