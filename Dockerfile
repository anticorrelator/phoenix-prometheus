FROM prom/prometheus

# Copy the template and the entrypoint script
COPY prometheus.yml.template /etc/prometheus/prometheus.yml.template
COPY entrypoint.sh /etc/prometheus/entrypoint.sh

EXPOSE 9090

USER root

RUN chmod +x /etc/prometheus/entrypoint.sh
RUN apt-get update && apt-get install -y curl

ENTRYPOINT ["/etc/prometheus/entrypoint.sh"]
CMD ["--config.file=/etc/prometheus/prometheus.yml", \
     "--storage.tsdb.path=/prometheus", \
     "--storage.tsdb.retention.time=365d", \
     "--web.console.libraries=/usr/share/prometheus/console_libraries", \
     "--web.console.templates=/usr/share/prometheus/consoles", \
     "--web.external-url=http://localhost:9090", \
     "--log.level=info"]

