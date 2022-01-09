FROM ruby:3.1.0-alpine

# build-base for nokogiri
# tzinfo-data for tzdata

RUN set -x && apk add --no-cache build-base tzdata yarn git

WORKDIR /app

COPY Gemfile ./
# COPY Gemfile Gemfile.lock ./

RUN bundle install -j4

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]