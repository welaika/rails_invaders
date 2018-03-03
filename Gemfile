source 'https://rubygems.org'

ruby '2.2.3'

gem 'active_link_to'
gem 'autoprefixer-rails'
gem 'coffee-rails', '~> 4.1.0'
gem 'delayed_job_active_record'
gem 'draper'
gem 'flutie'
gem 'high_voltage'
gem 'omniauth'
gem 'omniauth-github'
gem 'pg', '< 1.0'
gem 'puma'
gem 'rails', '~> 4.2.0'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'slim-rails'
gem 'title'
gem 'uglifier'

source 'https://rails-assets.org' do
  gem 'rails-assets-cookies-js'
  gem 'rails-assets-fontawesome', '4.3.0'
  gem 'rails-assets-jquery'
  gem 'rails-assets-jquery-ujs'
  gem 'rails-assets-lodash'
  gem 'rails-assets-normalize-css'
  gem 'rails-assets-phaser'
end

group :development do
  gem 'letter_opener'
  gem 'quiet_assets'
end

group :development, :test do
  gem 'awesome_print'
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  gem 'dotenv-rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rubocop', require: false
end

group :staging, :production do
  gem 'rails_stdout_logging'
end
