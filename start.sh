read -p "Enter AWS access key: " AWS_ACCESS_KEY
read -p "Enter AWS secret key: " AWS_SECRET_KEY
docker run -d -p 443:443 \
    -v `pwd`/certs:/certs \
    -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/docker.deepkeep.co.crt \
    -e REGISTRY_HTTP_TLS_KEY=/certs/docker.deepkeep.co.key \
    -e REGISTRY_STORAGE_S3_ACCESSKEY=$AWS_ACCESS_KEY \
    -e REGISTRY_STORAGE_S3_SECRETKEY=$AWS_SECRET_KEY \
    -e REGISTRY_STORAGE_S3_BUCKET=deepkeep-docker-registry \
    -e REGISTRY_STORAGE_S3_REGION=us-west-2 \
    --restart=always --name deepkeep-docker-registry \
    registry:2
