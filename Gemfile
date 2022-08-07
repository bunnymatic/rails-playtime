source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Heroku uses the ruby version to configure your application"s runtime.
ruby "2.6.6"

# Back-endy
gem "faker"
gem "pg"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 6.x"
gem 'listen'

# Front-endy
gem "autoprefixer-rails"
gem "bootstrap", "~> 4.1.1"
gem "coffee-rails"
gem "jquery-rails"
gem "sass-rails", require: false # Only needed for generator (e.g. rail g controller Users)
gem "sassc-rails"
gem "sprockets-rails", require: 'sprockets/railtie'
gem "simple_form"
gem "slim-rails"

group :development, :test do
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
end

group :test do
  gem "capybara"
  gem "capybara-selenium"
  gem "chromedriver-helper"
  gem "simplecov"
end
