source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'

group :production do
  # Pg is the Ruby interefeace to the {PostgreSQL RDBMS}[http://www.postgresql.org/]
  gem 'pg'
  # Makes running your Rails app easier. Based on the ideas behind 12.factor.net
  gem 'rails_12factor'
end

# Redcarpet is a Ruby library for Markdown processing (https://github.com/vmg/redcarpet)
gem 'redcarpet'
# Stripe EDIT ME
gem 'stripe'
# Pundit proves a set of helpers which build a simple, robust and scaleable authorization system. [https://github.com/elabs/pundit/blob/master/README.md#policies]
gem "pundit"
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'bootstrap-sass'
# reference: https://github.com/twbs/bootstrap-rubygem
gem 'bootstrap'
# Figaro was written to make it easy to securely configure Rails applications.
gem 'figaro'
# Devise is a flexible authentication solution for Rails based on Warded. More info: https://github.com/plataformatec/devise#getting-started
gem 'devise'
###########################################

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # rspec-rails is a testing framework for Rails 3.x, 4.x and 5.0
  gem 'rspec-rails'
  # Shoulda helps you write more understandable, maintainable Rails-specific tests using Minitest.
  gem 'shoulda'
  # This gem is a port of Perl's Data::Faker library that gernerates fake data.
  gem 'faker'
  # factory_girl is a fictures replacement with a straightforward definition syntax, support for multiple build strategies and
  # support for multiple factories for the same class including factory inheritance.
  gem 'factory_girl_rails'
  # pry-rails causes rails console to open pry therefore depending on pry.
  gem 'pry-rails'
end

group :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
