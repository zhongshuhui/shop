FROM php7.4:latest
LABEL authors="hui"
RUN mkdir -p /var/www/html/billsystem
ADD  ./  /var/www/html/
ADD default.conf  /etc/nginx/sites-available/default
CMD ["service","php7.4-fpm","start"]
CMD ["service","nginx","start"]
WORKDIR /var/www/html
EXPOSE 80 443

