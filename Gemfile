source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'

# Use sqlite3 as the database for Active Record in development and testing
gem 'sqlite3', group: [:development, :test]

# But use pg in production, for heroku
gem 'pg', group: :production

# Use haml
gem 'haml', '~> 4.0'
gem 'haml-rails', '~> 0.4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass', '~> 3.0.3.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
#gem 'jquery-ui-rails'
#gem 'rails3-jquery-autocomplete', git: 'https://github.com/francisd/rails3-jquery-autocomplete'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Install ember & emblem
gem 'ember-rails'
gem 'emblem-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]

group :development, :test do
  # Pretty printed test output
  gem 'turn', '0.8.3', :require => false

  # For testing
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'capybara-webkit'
  gem 'capybara', '~> 2.1.0'
  gem 'factory_girl_rails', '>= 4.2.1'
  gem 'cucumber-rails', '~> 1.4.0', :require => false
  gem 'database_cleaner', '< 1.1.0'#, github: 'bmabey/database_cleaner'
end
