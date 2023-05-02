# Create a Jekyll Container from a Ruby Alpine Image

# At a minimum use Ruby 2.5 or later

FROM ruby:2.7-alpine3.15

# Add Jekyll Dependencies to Alpine

RUN apk update
RUN apk add --no-cache build-base gcc cmake git


# Update the Ruby Bundler as install Jekyll
RUN gem update bundler && gem install bundler jekyll