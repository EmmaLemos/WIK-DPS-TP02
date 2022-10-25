# TP-WIK-DPS-TP02 Emma LEMOS

docker build -f dockerfile -t imagedevops .
docker build -f dockerfile2.Dockerfile -t imagedevops2 .

docker run -e PING_LISTEN_PORT=3000 -p 8080:3000 -it imagedevops
docker run -e PING_LISTEN_PORT=3000 -p 8080:3000 -it imagedevops2
