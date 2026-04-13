FROM nginx:latest
COPY . /usr/share/nginx/html
EXPOSE port 8080