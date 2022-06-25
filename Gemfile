source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
gem "rails", "~> 7.0.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails", "~> 1.1"
gem "jbuilder"
gem "hotwire-rails"
gem "redis", "~> 4.0"
gem 'resque', '~> 2.2.0', require: 'resque/server'
gem 'resque-scheduler', '~> 4.5.0'
gem 'stimulus-rails'
gem 'turbo-rails'
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 5.1.1'
end

group :development do
  gem 'awesome_print', '~> 1.9.2'
  gem 'brakeman', '~> 5.1.2'
  gem 'pry', '~> 0.14.1'
  gem 'pry-rails'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'web-console'
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
