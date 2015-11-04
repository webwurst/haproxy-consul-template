# haproxy-consul-template

Example:

```bash
$ docker run --name=haproxy webwurst/haproxy-consul-template consul-template \
  -consul demo.consul.io \
  -template /etc/consul-template/haproxy.ctmpl:/etc/haproxy/haproxy.conf \
  -dry
```
