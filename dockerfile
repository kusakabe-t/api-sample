FROM ruby:3.1.0-alpine
EXPOSE 3000

# build-base for nokogiri
# tzinfo-data for tzdata

RUN set -x && apk add --no-cache build-base tzdata yarn git

WORKDIR /app

COPY Gemfile ./
# COPY Gemfile Gemfile.lock ./

RUN bundle install -j4
COPY . ./

# CMD ["sh", "./start.sh"]
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]

