FROM ruby:2.3.1

MAINTAINER Andy Tiffany <mister.tiffany@gmail.com>

ENV RACK_ENV production
ENV MAIN_APP_FILE app.rb

RUN mkdir -p /app
RUN apt-get update
RUN apt-get install -y curl

ADD startup.sh /

WORKDIR /app

EXPOSE 80

CMD ["/bin/bash", "/startup.sh"]
