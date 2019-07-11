FROM composer:latest
MAINTAINER https://github.com/maverage/Docker-PHPMailer

WORKDIR /app
RUN touch composer.json && echo "{\n\t\"require\": {\n\t\}\n}" > composer.json
RUN composer require phpmailer/phpmailer
RUN composer install
ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]

CMD ["composer"]
