FROM nginx

LABEL maintainer="lcdev76 <lenaick.chartrain@tutanota.com>"

ENV http_proxy=${HTTP_PROXY}
ENV https_proxy=${HTTPS_PROXY}

RUN apt-get update && apt-get install -y vim

ADD conf/nginx.conf /etc/nginx/nginx.conf

WORKDIR /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
