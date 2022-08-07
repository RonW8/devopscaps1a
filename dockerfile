FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install apache2
RUN rm /var/www/html/index.html
ADD ./index.html /var/www/html
RUN mkdir config-management>/home/ubuntu/
ENTRYPOINT apachectl -D FOREGROUND
ENV name DEVOPS PRACTICE BY SURENDRA
###
