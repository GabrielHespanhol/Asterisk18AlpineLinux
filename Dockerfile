FROM alpine

LABEL maintainer="Gabriel Lopes Hespanhol"
LABEL version="1.0"
LABEL create="Imagem criada 12-09-2022"

RUN apk update \
    && apk add asterisk \
    && apk add asterisk-sample-config
    
COPY http.conf /etc/asterisk
COPY prometheus.conf /etc/asterisk

VOLUME /etc/asterisk
VOLUME /var/lib/asterisk
VOLUME /var/spool/asterisk
VOLUME /var/log/asterisk

EXPOSE 5060/udp
EXPOSE 8088

ENTRYPOINT [ "/usr/sbin/asterisk" ]
CMD [ "-f" ]