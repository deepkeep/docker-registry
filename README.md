# Docker registry for deepkeep.co

## Deploy

1. `ssh root@docker.deepkeep.co`
2. `git clone https://github.com/deepkeep/docker-registry.git`
3. `cd docker-registry`
4. `mkdir certs && cd certs`
5. download `docker.deepkeep.co.crt`, `intermediate-docker.deepkeep.co.crt` and `docker.deepkeep.co.key` to certs/
6. combine the two crt files: `cat docker.deepkeep.co.crt intermediate-docker.deepkeep.co.crt > docker.deepkeep.co.crt`
7. `./start.sh`
