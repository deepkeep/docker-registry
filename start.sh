docker build -t deepkeep-docker-registry .
docker run -d -p 5000:5000 \
    -v `pwd`/certs:/certs \
    -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/docker.deepkeep.co.crt \
    -e REGISTRY_HTTP_TLS_KEY=/certs/docker.deepkeep.co.key \
    --restart=always --name deepkeep-docker-registry \
    deepkeep-docker-registry
