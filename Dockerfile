FROM apurvbidkar/ubuntu
RUN apt-get update
RUN apt install nginx -y
WORKDIR /var/www/html/
RUN rm -rf *
COPY ./index.html  /var/www/html/
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80

