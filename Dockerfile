FROM alpine:3

RUN apk add --no-cache pulseaudio pulseaudio-utils gettext

COPY system.pa.template /etc/pulse/system.pa.template
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

CMD /usr/local/bin/entrypoint.sh
