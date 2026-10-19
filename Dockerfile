FROM alpine:latest
RUN apk add --no-cache tinyproxy
RUN sed -i 's/Allow 127.0.0.1/#Allow 127.0.0.1/' /etc/tinyproxy/tinyproxy.conf
EXPOSE 8888
CMD ["tinyproxy", "-d"]
