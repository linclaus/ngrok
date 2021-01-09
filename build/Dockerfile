FROM golang:1.7.1-alpine
RUN apk add --no-cache make git openssl
COPY build/build.sh /
COPY ./ /ngrok
ARG NGROK_DOMAIN    
RUN sh /build.sh ${NGROK_DOMAIN}
EXPOSE 8088
VOLUME [ "/ngrok" ]
CMD [ "/ngrok/bin/ngrokd"]