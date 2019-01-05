# Use the barebones version of Ruby 2.2.3.
FROM ruby:2.5.0-slim

RUN apt-get update && apt-get install -qq -y build-essential nodejs libsqlite3-dev postgresql libpq-dev postgresql-client --fix-missing --no-install-recommends

COPY . .
# COPY Gemfile Gemfile
RUN bundle install

# The default command that gets ran will be to start the Unicorn server.
CMD bundle exec rails s
