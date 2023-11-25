FROM grafana/promtail:2.9.0

RUN apt-get update && apt-get install --assume-yes curl jq

COPY run.sh /run.sh

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
