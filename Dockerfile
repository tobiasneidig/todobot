FROM ruby:2.4.0-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /todobot
WORKDIR /todobot
ADD Gemfile /todobot/Gemfile
ADD Gemfile.lock /todobot/Gemfile.lock
RUN bundle install
ADD . /todobot
