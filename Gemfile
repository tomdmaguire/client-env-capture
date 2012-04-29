source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3', '~> 1.3.6'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',               '~> 3.2.3'
  gem 'coffee-rails',             '~> 3.2.1'
  gem 'twitter-bootstrap-rails',  '~> 2.0.6'
  gem 'uglifier',                 '>= 1.0.3'
end

gem "bcrypt-ruby",                '~> 3.0.1', :require => "bcrypt"
gem 'bootstrap-will_paginate',    '~> 0.0.7'
gem 'jquery-rails',               '~> 2.0.2'
gem 'therubyracer',               '~> 0.10.1'
gem 'thin',                       '~> 1.3.1'
gem 'user-agent',                 '~> 1.0.0'
gem 'will_paginate',              '~> 3.0'

group :development do
  gem 'nifty-generators'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem "mocha", :group => :test

group :production, :staging do
  gem 'newrelic_rpm',           '~> 3.2.0'
end
