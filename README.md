# grafana-workshop
Grafana demo stack with PostgreSQL, Loki &amp; Prometheus datasources

## Promtail

```
{hostname="promtail"} | json | line_format "{{.content}}"
{hostname="promtail"} | json | length <= 30 | line_format "{{.content}}"
{hostname="promtail"} | json | author =~ "Abraham Lincoln"
{hostname="promtail"} | json | line_format "{{.author}}\t\t{{.content}}"
{hostname="promtail"} | json | author =~ "Abraham Lincoln" | line_format "{{.content}}"
{hostname="promtail"} | json | author =~ "Abraham Lincoln" and length <= 50 | line_format "{{.content}}"
```
