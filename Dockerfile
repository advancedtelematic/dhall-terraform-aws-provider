FROM ruby:2.5

RUN apt-get update && apt-get install less -y
# throw errors if Gemfile has been modified since Gemfile.lock

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install --no-deployment

COPY . .

CMD ["ruby", "./parser.rb"]
