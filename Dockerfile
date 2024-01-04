# FROM nginx:1.21-alpine
FROM nginx:1.25-alpine
COPY ./public  /usr/share/nginx/html
