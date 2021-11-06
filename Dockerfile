FROM ruby@sha256:713722b441f0aecc2425b50b4b2fb9923125c3e42e2a1c68618247d021a4fac2

WORKDIR /app

RUN apk add --update --no-cache build-base
RUN gem install bundler

COPY Gemfile Gemfile.lock /app/
RUN bundle
ENV RACK_ENV development
