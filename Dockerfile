FROM registry:2

EXPOSE 5000

COPY config.yaml cmd/registry/config.yml
