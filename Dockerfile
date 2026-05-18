FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY privacy.html /usr/share/nginx/html/privacy.html
COPY terms.html /usr/share/nginx/html/terms.html
COPY cookies.html /usr/share/nginx/html/cookies.html
COPY refund.html /usr/share/nginx/html/refund.html
COPY subscription.html /usr/share/nginx/html/subscription.html
COPY dpa.html /usr/share/nginx/html/dpa.html
COPY sitemap.xml /usr/share/nginx/html/sitemap.xml
COPY robots.txt /usr/share/nginx/html/robots.txt
COPY ads.txt /usr/share/nginx/html/ads.txt
COPY assets /usr/share/nginx/html/assets
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
