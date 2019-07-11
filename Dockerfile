FROM composer:latest
MAINTAINER https://github.com/maverage/Docker-PHPMailer

WORKDIR /app

RUN composer install && composer require phpmailer/phpmailer

ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]

CMD ["composer"]
