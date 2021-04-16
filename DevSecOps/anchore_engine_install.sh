mkdir /tmp/aevolume
cd /tmp/aevolume

docker pull docker.io/anchore/anchore-engine:latest
docker create --name ae docker.io/anchore/anchore-engine:latest
docker cp ae:/docker-compose.yaml ~/aevolume/docker-compose.yaml
docker rm ae

docker-compose pull
docker-compose up -d

export ANCHORE_CLI_USER=admin
export ANCHORE_CLI_PASS=foobar

docker run --net=host -e ANCHORE_CLI_URL=http://localhost:8228/v1/ -it anchore/engine-cli
