FROM ruby:2.7.1

RUN gem install rubocop

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1


WORKDIR /usr/src/app

RUN mkdir /usr/src/results

ENTRYPOINT ["rubocop --require ./sarif_formatter.rb --format SarifFormatter -o ../results/output.sarif"]