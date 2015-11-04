FROM alpine:3.2

RUN apk --update add haproxy curl

ENV CONSUL_TEMPLATE_VERSION=0.11.1
RUN curl -SOL https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip \
  && unzip consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip -d /usr/bin \
  && rm consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip
