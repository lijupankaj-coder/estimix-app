FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY nblx-cffe300c-ctrl.html /usr/share/nginx/html/nblx-cffe300c-ctrl.html
COPY privacy.html /usr/share/nginx/html/privacy.html
COPY terms.html /usr/share/nginx/html/terms.html
COPY sitemap.xml /usr/share/nginx/html/sitemap.xml
COPY robots.txt /usr/share/nginx/html/robots.txt
COPY ads.txt /usr/share/nginx/html/ads.txt
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Admin credentials — User: liju | Password: Nblx@Admin2026
RUN printf 'liju:$apr1$3EmAUQS0$GjXxD1L.jqeGn9ez8hwky1\n' > /etc/nginx/.htpasswd

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
