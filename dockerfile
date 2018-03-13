FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /Customers
WORKDIR /Customers
ADD Gemfile /Customers/Gemfile
ADD Gemfile.lock /Customers/Gemfile.lock
RUN gem install tzinfo
RUN gem install tzinfo-data

RUN bundle install 
COPY . /Customers

EXPOSE 3000

CMD bundle exec rake db:create db:migrate assets:precompile

CMD ["rails", "server", "-b", "0.0.0.0"]
