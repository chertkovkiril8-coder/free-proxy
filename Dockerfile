FROM alpine:latest
RUN apk add --no-cache tinyproxy
RUN printf "Port 8888\nListen 0.0.0.0\nTimeout 600\nLogLevel Info\nMaxClients 100\nMinSpareServers 5\nMaxSpareServers 20\nStartServers 10\nMaxRequestsPerChild 0\nAllow 0.0.0.0/0\n" > /etc/tinyproxy/tinyproxy.conf
EXPOSE 8888
CMD ["tinyproxy", "-d"]
