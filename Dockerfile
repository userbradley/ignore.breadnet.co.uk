FROM nginx:stable-alpine

COPY cloudflare /etc/nginx/cloudflare
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY ignore/kube /var/www/
COPY ignore/ /var/www

EXPOSE 80