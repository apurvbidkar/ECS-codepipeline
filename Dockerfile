FROM ubuntu 
RUN apt-get update
RUN apt install nginx -y
RUN cd /var/www/html/
RUN rm -rf /*.html
COPY ./index.html  /var/www/html/
RUN service nginx start
EXPOSE 80






