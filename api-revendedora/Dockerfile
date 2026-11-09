# syntax=docker/dockerfile:1
FROM alpine:3.22
RUN --mount=type=secret,id=proxy_ca \
    if [ -f /run/secrets/proxy_ca ]; then export SSL_CERT_FILE=/run/secrets/proxy_ca; fi; \
    apk add --no-cache apache2 php84-apache2 php84-pdo_mysql php84-mbstring php84-session
COPY api.php conexao.php /var/www/localhost/htdocs/
RUN rm -f /var/www/localhost/htdocs/index.html \
    && chmod 644 /var/www/localhost/htdocs/api.php /var/www/localhost/htdocs/conexao.php \
    && mkdir -p /var/lib/php/sessions \
    && chown apache:apache /var/lib/php/sessions \
    && printf 'session.save_path=/var/lib/php/sessions\nexpose_php=Off\ndisplay_errors=Off\nlog_errors=On\n' > /etc/php84/conf.d/99-app.ini \
    && printf '\nServerName localhost\nErrorLog /proc/self/fd/2\nCustomLog /proc/self/fd/1 combined\n' >> /etc/apache2/httpd.conf
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
