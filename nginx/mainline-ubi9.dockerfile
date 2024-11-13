FROM registry.access.redhat.com/ubi9/ubi-minimal

EXPOSE 8080
EXPOSE 8443

LABEL org.opencontainers.image.authors="Kamil Pfaff" \
      org.opencontainers.image.url="https://hub.docker.com/r/pfaffk/nginx" \
      org.opencontainers.image.documentation="https://github.com/Reykez/ubi-images/tree/main/nginx/README.md" \
      org.opencontainers.image.source="https://github.com/Reykez/ubi-images/tree/main/nginx" \
      org.opencontainers.image.title="NGINX UBI Linux"

COPY nginx.repo /etc/yum.repos.d/nginx.repo

RUN microdnf -y install nginx \
 && microdnf -y clean all --enablerepo='*'

COPY error_pages/ /usr/share/nginx/error_pages/
COPY nginx.conf /etc/nginx/nginx.conf
COPY includes/ /etc/nginx/includes/
COPY default-http.conf /etc/nginx/conf.d/default-http.conf
COPY default-https.conf /etc/nginx/conf.d/default-https.conf.disabled

# Create dummy certificates for HTTPS config.
RUN mkdir -p /etc/nginx/ssl \
  && openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/privkey.pem \
    -out /etc/nginx/ssl/fullchain.pem \
    -subj "/C=US/O=Dummy/CN=www.example.com"

# Drop root user
RUN ln -s /usr/share/nginx/html /www \
 && chown -R 1000:0 /usr/share/nginx \
                    /var/log/nginx \
                    /etc/nginx \
 && chmod g+s /usr/share/nginx \
 && chmod -R g+rwX /var/log/nginx \
 && rm -rf /usr/share/nginx/html/*

USER 1000:0

CMD ["nginx", "-g", "daemon off;"]
