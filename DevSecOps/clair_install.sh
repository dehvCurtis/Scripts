
# Download Clair Scanner from https://github.com/arminc/clair-scanner/releases
chmod +x clair-scanner 

docker run -p 5432:5432 -d --name db arminc/clair-db:$(date +%F)
docker run -p 6060:6060 --link db:postgres -d --name clair arminc/clair-local-scan:v2.0.6
