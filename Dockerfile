# Use a more recent Ruby version
FROM ruby:3.2.2

# Set the working directory
WORKDIR /app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile ./

# Install bundler and dependencies
RUN gem install bundler && bundle install

# Copy the rest of the application
COPY . .

# Build the Jekyll site
RUN bundle exec jekyll build

# Command to run when the container starts
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
