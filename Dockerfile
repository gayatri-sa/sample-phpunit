FROM php:7.1
MAINTAINER Gayatri S Ajith <gayatri@schogini.com>

# Install PHPUnit
RUN apt-get update
RUN apt-get install -y nano wget curl
RUN wget https://phar.phpunit.de/phpunit-6.5.phar
RUN chmod +x phpunit-6.5.phar
RUN mv phpunit-6.5.phar /usr/local/bin/phpunit
RUN phpunit --version

# Install Git
RUN apt-get install -y git

# Our PHPUnit test script
COPY Dockerfile /
COPY phpunit-test.sh /
RUN chmod +x /phpunit-test.sh
