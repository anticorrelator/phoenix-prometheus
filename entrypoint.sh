#!/bin/sh
sed -e "s|\POSTGRES_PHOENIX_URL|$POSTGRES_PHOENIX_URL|g" \
    -e "s|\SQLITE_PHOENIX_URL|$SQLITE_PHOENIX_URL|g" \
    /etc/prometheus/prometheus.yml.template > /etc/prometheus/prometheus.yml

cat /etc/prometheus/prometheus.yml

exec /bin/prometheus "$@"

