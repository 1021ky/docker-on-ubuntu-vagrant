FROM httpd:2.2
COPY ./apache_conf/httpd.conf /usr/local/apache2/conf/httpd.conf
ENTRYPOINT [ "httpd-foreground" ]