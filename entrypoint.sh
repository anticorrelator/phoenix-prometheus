#!/bin/sh
sed -e "s|\${POSTGRES_URL}|$POSTGRES_URL|g" \
    -e "s|\${SQLITE_URL}|$SQLITE_URL|g" \
    /etc/prometheus/prometheus.yml.template > /etc/prometheus/prometheus.yml

cat /etc/prometheus/prometheus.yml

exec /bin/prometheus "$@"

