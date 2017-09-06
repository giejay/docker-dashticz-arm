FROM werwolfby/armhf-alpine-nginx
RUN mkdir -p /run/nginx
RUN apk update && \
    apk add git
RUN rm -r /var/lib/nginx/html
RUN git clone https://github.com/giejay/dashticz_v2.git /var/lib/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
