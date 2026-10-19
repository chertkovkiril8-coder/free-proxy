FROM alpine:latest
RUN apk add --no-cache tinyproxy
RUN echo -e "Port 8888\nListen 0.0.0.0\nTimeout 600\nLogLevel Info\nPidFile /var/run/tinyproxy/tinyproxy.pid\nMaxClients 100\nMinSpareServers 5\nMaxSpareServers 20\nStartServers 10\nMaxRequestsPerChild 0\nAllow 0.0.0.0/0" > /etc/tinyproxy/tinyproxy.conf
EXPOSE 8888
CMD ["tinyproxy", "-d"]
