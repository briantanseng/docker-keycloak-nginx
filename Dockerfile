###
# Keycloak Nginx Dockerfile 1.3
# (c) 2016 Dennis Klein
#
FROM nginx

MAINTAINER Dennis Klein <dennis.klein@gmx.com>

# nginx configuration
RUN rm -rf /etc/nginx/conf.d/*
ADD keycloak.conf /etc/nginx/conf.d/keycloak.conf

# ssl configuration
RUN mkdir -p /etc/nginx/ssl-self-signed && \
  mkdir -p /etc/nginx/ssl
VOLUME /etc/nginx/ssl

# copy entrypoint.sh
ADD entrypoint.sh /custom/entrypoint.sh

CMD ["/custom/entrypoint.sh"] 
