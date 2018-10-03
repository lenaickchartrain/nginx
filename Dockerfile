FROM nginx

RUN apt-get update && apt-get install -y vim

ADD conf/nginx.conf /etc/nginx/nginx.conf

WORKDIR /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
