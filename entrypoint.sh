#!/bin/sh
envsubst < /etc/prometheus/prometheus.yml.template > /etc/prometheus/prometheus.yml

exec /bin/prometheus "$@"

