FROM ubuntu

RUN apt-get -y update && apt-get -y install nginx


COPY ./app1 /usr/share/nginx/html
COPY ./Nginxfile /etc/nginx
COPY ./default /etc/nginx/sites-available/default

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
