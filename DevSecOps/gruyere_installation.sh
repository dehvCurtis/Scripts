echo 'Pulling latest'
docker pull karthequian/gruyere:latest
echo 'Running Docker Containter on port 8008'
docker run --rm -d -p 8008:8008 karthequian/gruyere:latest
echo 'Listing running containers'
docker ps