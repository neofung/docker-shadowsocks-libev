#https://github.com/shadowsocks/shadowsocks-libev/tree/master/docker/ubuntu

PASSWORD="Pass_word"
PORT="1984"
NAME="shadowsocks"
METHOD="chacha20"

echo install docker
apt-get install docker.io

echo stop and remove shadowsocks instance
docker stop shadowsocks
docker rm shadowsocks

echo run the image
docker run --name $NAME --detach --publish $PORT:8338 --publish $PORT:8838/udp shadowsocks/shadowsocks-libev -k $PASSWORD --fast-open -v -m $METHOD
docker ps -al
