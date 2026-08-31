FROM nginx:alpine
COPY site /usr/share/nginx/html
# Railway routes traffic to $PORT (injected at runtime); rebind nginx to it.
CMD sh -c 'sed -i "s/listen 80;/listen ${PORT:-80};/" /etc/nginx/conf.d/default.conf && exec nginx -g "daemon off;"'
