FROM ruby:2.3.6
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev ruby-mysql2 nodejs
RUN apt-get install -qq -y mysql-client libmysqlclient-dev

RUN mkdir /Customers
WORKDIR /Customers
ADD Gemfile /Customers/Gemfile
ADD Gemfile.lock /Customers/Gemfile.lock
RUN bundle install
COPY . /Customers
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]


#Startup commands
ENTRYPOINT ["bundle", "exec"]
CMD bundle exec rake db:create db:migrate assets:precompile
CMD bundle exec rails server