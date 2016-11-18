FROM registry

COPY docker-entrypoint.sh /entrypoint.sh

#RUN sed -i "s/addr: :5000/addr: :$p/g" /etc/docker/registry/config.yml

