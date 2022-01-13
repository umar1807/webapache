# Base image
FROM ubuntu:16.04

# update & install apache
RUN apt update && apt install apache2 -y

# copy dari local ke container
COPY index.html /var/www/html

# start service apache2
CMD ["apachectl", "-D", "FOREGROUND"]
