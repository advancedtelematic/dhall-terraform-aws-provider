FROM ruby:2.5

RUN apt-get update && apt-get install less unzip -y
# throw errors if Gemfile has been modified since Gemfile.lock

WORKDIR /usr/src/app

ENV TFSCHEMA_VERSION 0.2.0
RUN wget https://github.com/minamijoyo/tfschema/releases/download/v${TFSCHEMA_VERSION}/tfschema_${TFSCHEMA_VERSION}_linux_amd64.tar.gz
RUN tar -xvf tfschema_${TFSCHEMA_VERSION}_linux_amd64.tar.gz
RUN mv tfschema /usr/local/bin/

ENV TERRAFORM_VERSION 0.11.11
RUN wget "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN mv terraform /usr/local/bin/

RUN echo 'provider "aws" {}' > main.tf
RUN terraform init

COPY Gemfile Gemfile.lock ./
RUN bundle install --no-deployment

COPY . .

CMD ["ruby", "./generate-schema.rb"]
