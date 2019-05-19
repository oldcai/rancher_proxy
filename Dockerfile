FROM nginx:stable-alpine

ENV RANCHER_HOST localhost
ENV RANCHER_PORT 4003
COPY rancher_proxy.conf /etc/nginx/conf.d/
COPY robots.txt /var/www/
COPY run_server.sh /

CMD ["/run_server.sh"]

EXPOSE 80
