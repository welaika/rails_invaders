source "https://rubygems.org"

ruby "2.2.3"

gem "airbrake"
gem "autoprefixer-rails"
gem "bourbon", "~> 4.2.0"
gem "coffee-rails", "~> 4.1.0"
gem "delayed_job_active_record"
gem "draper"
gem "email_validator"
gem "flutie"
gem "high_voltage"
gem "neat", "~> 1.7.0"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "puma"
gem "rails", "~> 4.2.0"
gem "rails-i18n"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "slim-rails"
gem "title"
gem "uglifier"
gem "omniauth"
gem "omniauth-github"
gem "active_link_to"

source "https://rails-assets.org" do
  gem "rails-assets-fontawesome", "4.3.0"
  gem "rails-assets-jquery"
  gem "rails-assets-jquery-ujs"
  gem "rails-assets-lodash"
  gem "rails-assets-normalize-css"
  gem "rails-assets-phaser"
  gem "rails-assets-cookies-js"
end

group :development do
  gem "letter_opener"
  gem "quiet_assets"
  gem "refills"
  gem "spring"
  gem "spring-commands-rspec"
end

group :development, :test do
  gem "awesome_print"
  gem "brakeman", require: false
  gem "bullet"
  gem "bundler-audit", require: false
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "faker"
  gem "i18n-tasks"
  gem "nokogiri", "1.6.0" # fix for new xcode
  gem "priscilla"
  gem "pry-bloodline"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.3.0"
  gem "rubocop", require: false
end

group :test do
  gem "capybara-webkit"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "simplecov-json", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "rails_stdout_logging"
end
