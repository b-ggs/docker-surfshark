FROM alpine:latest

ENV SURFSHARK_USER=
ENV SURFSHARK_PASSWORD=
ENV SURFSHARK_COUNTRY=
ENV SURFSHARK_CITY=
ENV CONNECTION_TYPE=tcp

WORKDIR /vpn

COPY startup.sh .

RUN apk add --update --no-cache openvpn wget unzip coreutils \
  && chmod +x ./startup.sh

ENTRYPOINT ["./startup.sh"]
