source 'https://rubygems.org'

# Heroku uses the ruby version to configure your application's runtime.
ruby '2.1.5'

gem 'puma'
gem 'rack-timeout'
gem 'rack-canonical-host'
gem 'rails', '~> 4.1.9'
gem 'pg'

gem 'slim-rails'
gem 'sass-rails'
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'coffee-rails'
gem 'simple_form'
gem 'uglifier'

gem 'awesome_print'

gem "active_model_serializers", "~> 0.9"
#gem "active_model_serializers", github: "rails-api/active_model_serializers", branch: "0-8-stable"

group :production, :acceptance do
  gem 'rails_stdout_logging'
  gem 'heroku_rails_deflate'
end

group :test do
  gem 'fuubar'
  gem 'faker'
  gem 'capybara'
  #gem 'capybara-email'
  gem 'poltergeist'
  #gem 'timecop'
  gem 'database_cleaner'
  gem 'simplecov'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'pry-byebug'
  gem 'factory_girl_rails'
  gem 'jasmine-rails'
  #gem 'cane'
  #gem 'morecane'
end

group :development do
  #gem 'spring'
  #gem 'spring-commands-rspec'
  gem 'foreman'
  gem 'launchy'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'guard', '~> 2'
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'rb-fsevent'
  gem 'growl'
end
