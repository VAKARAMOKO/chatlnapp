source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# You'll need to include the following dependencies of Summernote
gem 'bootstrap-sass'
gem "font-awesome-rails"
gem 'codemirror-rails'
gem 'jquery-turbolinks'


# Use ActiveStorage variant
gem 'mini_magick', '~> 4.8'
# #membership
gem 'devise', '~> 4.6', '>= 4.6.2'
#membership invitable
gem 'devise_invitable', '~> 2.0', '>= 2.0.1'# bundle: yet; installation: not yet
#url  builder for SEO
#gem 'friendly_id', '~> 5.2', '>= 5.2.5' no implement
# builder form
gem 'simple_form', '~> 4.1'
# reconfigurez apres pour utiliser seulement que carrierwave

#carrierwave
gem 'carrierwave', '~> 1.3', '>= 1.3.1'
#vote
gem 'acts_as_votable', '~> 0.12.0'#no implement
#vue
gem 'impressionist', '~> 1.6', '>= 1.6.1'#no implement
#time ago
gem 'time_ago_in_words', '~> 0.1.1'#no implement
# editor
gem 'summernote-rails', '~> 0.8.10.0'
#loading content
gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'bootstrap', '~> 4.3', '>= 4.3.1'
gem 'jquery-rails'
#select country
gem 'country_select', '~> 4.0'
#stylisation
gem 'bulma-rails', '~> 0.7.5'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'open_gem', '~> 1.5'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
