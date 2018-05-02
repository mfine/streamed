FROM ruby:2.3.3

WORKDIR /app

COPY . /app

RUN bundle install