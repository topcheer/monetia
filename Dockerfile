FROM nginx:alpine
ENV PORT=8080
COPY site /usr/share/nginx/html
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.template /etc/nginx/templates/default.conf.template
EXPOSE 8080
