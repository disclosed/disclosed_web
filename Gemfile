source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails', '4.1.1'
gem 'interactor-rails', '~> 2.0'
gem 'pg'
gem 'jquery-rails'
gem 'turbolinks' # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'slim-rails' # HAML-like markup language. Faster than HAML. Supports streaming.
gem 'rack-cors', require: 'rack/cors' # Enables cross-origin resource sharing for AJAX apps

gem 'c3-rails' # A D3 library for data visualization.
gem 'd3_rails' # C3 is dependent on a D3 library present.
gem 'gon'

gem 'puma'

# Asset compilation gems should be available in production for Capistrano deployment
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'therubyracer' # Required by less
gem 'less-rails'

# Scraper gems
gem 'nokogiri'
gem 'chronic' # Natural language date parser used by scraper to parse dates
gem 'monetize' # Parse money amounts. Used by scraper.
gem 'active_attr' # Used for value objects on steroids

group :development do
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'guard-minitest'

  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'fabrication'
  gem 'minitest-rails'
  gem 'minitest-rails-capybara' # Use with: bin/rails generate minitest:feature CanAccessHome --spec
  gem 'mocha' # delicious mocks and stubs
  gem 'database_cleaner'
  gem 'timecop' # time freezing gem
  gem 'vcr'     # record web requests for scraper tests
  gem 'webmock' # used by vcr
  gem "codeclimate-test-reporter", require: nil
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

