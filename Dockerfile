FROM ruby:2.7.1

RUN gem install rubocop

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]