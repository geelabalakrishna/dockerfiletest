FROM nginx
LABEL contact="balakrishna.geela@gmail.com"
RUN apt update && apt install -y curl wget net-tools iputils-ping dnsutils jq
RUN mkdir -p /usr/share/nginx/html/app/v1
RUN mkdir /usr/share/nginx/html/app/v2
RUN mkdir /usr/share/nginx/html/app/v3
RUN mkdir /usr/share/nginx/html/app/v4
ENV version-1="v1"
ENV version-1="v2"
ENV version-1="v3"
ENV version-1="v4"
RUN echo This Application is path based testing /usr/share/nginx/html/app/v1/ and version is : $version-1 --------- > /usr/share/nginx/html/app/v1/index.html
RUN echo This Application is path based testing /usr/share/nginx/html/app/v2/ and version is : $version-2 --------- > /usr/share/nginx/html/app/v2/index.html
RUN echo This Application is path based testing /usr/share/nginx/html/app/v3/ and version is : $version-3 --------- > /usr/share/nginx/html/app/v3/index.html
RUN echo This Application is path based testing /usr/share/nginx/html/app/v4/ and version is : $version-15 --------- > /usr/share/nginx/html/app/v4/index.html
RUN service nginx restart
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
