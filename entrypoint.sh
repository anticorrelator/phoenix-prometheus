#!/bin/sh

sed -e "s|AUTH_PHOENIX_URL|$AUTH_PHOENIX_URL|g" \
    -e "s|NOAUTH_PHOENIX_URL|$BASELINE_PHOENIX_URL|g" \
    /etc/prometheus/prometheus.yml.template > /etc/prometheus/prometheus.yml

cat /etc/prometheus/prometheus.yml

exec /bin/prometheus "$@"
