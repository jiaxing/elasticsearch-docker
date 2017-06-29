FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.1

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin remove x-pack

USER root
RUN mkdir -p /var/data/elasticsearch /var/log/elasticsearch && \
  chown -R elasticsearch:elasticsearch /var/data/elasticsearch /var/log/elasticsearch

VOLUME ["/var/data/elasticsearch", "/var/data/elasticsearch"]

USER elasticsearch
