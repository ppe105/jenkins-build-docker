FROM nginx:latest
RUN sed -i 's/nginx/abou/g' /usr/share/nginx/html/index.html
EXPOSE 80
