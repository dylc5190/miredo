# miredo
test teredo in docker container

# scenario
docker build -t miredo .
docker-compose up &
docker exec -it miredo_client_1 bash
service miredo start
ping6 -c 1 2001:4860:4860::8888

# notes
* using docker run without docker-compose
  docker run --privileged -it miredo bash 
* in some configuration I need to delete the default route
  ip -6 route del default via 2001:db8:1::1 dev eth0

