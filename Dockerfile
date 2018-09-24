FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libmysqlclient-dev
RUN mkdir /ecoapi
WORKDIR /ecoapi
ADD Gemfile /ecoapi/Gemfile
ADD Gemfile.lock /ecoapi/Gemfile.lock
RUN bundle install
ADD . /ecoapi
