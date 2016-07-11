PASSWORD=Pass_word
PORT=1984
NAME=shadowsocks

apt-get install docker.io
docker stop shadowsocks
docker rm shadowsocks
docker run --name $NAME --detach --publish $PORT:8338 --publish $PORT:8838/udp shadowsocks/shadowsocks-libev -k $PASSWORD -m aes-256-cfb --fast-open -v
docker ps -al
