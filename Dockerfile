FROM ruby:2.7.1

RUN gem install rubocop

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN echo $(pwd)
RUN mkdir ../results


ENTRYPOINT ["rubocop --require ./sarif_formatter.rb --format SarifFormatter -o ../results/output.sarif"]