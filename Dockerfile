FROM nginx:stable-alpine
COPY . /var/www

# new
COPY nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
