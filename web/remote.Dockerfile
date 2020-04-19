# @see https://docs.docker.com/compose/rails/
# @see https://evilmartians.com/chronicles/ruby-on-whales-docker-for-ruby-rails-development
FROM ruby:2.5.7

ENV RAILS_ENV production
ENV RACK_ENV production
ENV RAILS_SERVE_STATIC_FILES true

ARG RAILS_MASTER_KEY_ARG
ENV RAILS_MASTER_KEY $RAILS_MASTER_KEY_ARG

ARG POSTGRES_PASSWORD_ARG
ENV POSTGRES_PASSWORD $POSTGRES_PASSWORD_ARG

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get update -qq  \
    && apt-get install -yq --no-install-recommends \
    build-essential \
    nodejs \
    postgresql-client

# Install yarn
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn

RUN mkdir -p /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install --without development test
COPY . /myapp
RUN rails assets:precompile

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]