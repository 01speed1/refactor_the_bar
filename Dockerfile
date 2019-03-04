FROM ruby:2.5.1

ENV APP_HOME /the_bar
RUN mkdir $APP_HOME

WORKDIR $APP_HOME
ADD . $APP_HOME

RUN gem install bundler
RUN bundle install
