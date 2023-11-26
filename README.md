# grafana-workshop
Grafana demo stack with PostgreSQL, Loki &amp; Prometheus datasources

## Purposes

## Requirements

* Docker and docker-compose
* direnv

## Getting started

```
cp .envrc.dist .envrc
docker-compose up --build -d
docker-compose logs -f promtail
```

## Promtail

```
{hostname="promtail"} | json | line_format "{{.content}}"
{hostname="promtail"} | json | length <= 30 | line_format "{{.content}}"
{hostname="promtail"} | json | author =~ "Abraham Lincoln"
{hostname="promtail"} | json | line_format "{{.author}}\t\t{{.content}}"
{hostname="promtail"} | json | author =~ "Abraham Lincoln" | line_format "{{.content}}"
{hostname="promtail"} | json | author =~ "Abraham Lincoln" and length <= 50 | line_format "{{.content}}"
count_over_time({hostname="promtail"}[1m])
```
