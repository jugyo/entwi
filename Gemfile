source 'http://rubygems.org'

gem 'rails', '3.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

gem 'bson_ext', '1.0.4'
gem 'mongoid', '2.0.0.beta.18'
gem 'twitter-auth',
    :require => 'twitter_auth/engine',
    :git => 'git://github.com/nijitaro/twitter-auth.git',
    :branch => 'rails_3_mongoid'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'rspec-rails', '2.0.0.beta.22'
  gem 'haml-rails'
  gem 'g'
  gem 'factory_girl'
end
