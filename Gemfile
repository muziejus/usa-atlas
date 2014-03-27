source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

# Use sqlite3 as the database for Active Record in development and testing
gem 'sqlite3', group: [:development, :test]

# But use pg in production, for heroku
gem 'pg', group: :production

# Front end
gem 'haml-rails', '~> 0.4'
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.1.0'
gem 'ember-source', '1.3.2' # production as of 2014.2.9
gem 'ember-rails'
gem 'emblem-rails', '>= 0.2.0' #, git: 'https://github.com/alexspeller/emblem-rails'
gem 'leaflet-rails'

# Assets
group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby
  gem 'uglifier', '>= 1.3.0'
end

# Misc
gem 'json', '~> 1.7.7'

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
