source 'https://rubygems.org'

gem 'rails', '4.2.5'
gem 'mysql2', '>= 0.3.13', '< 0.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-script-source', '1.8.0'
gem 'jquery-rails'
gem 'apartment'
gem "figaro"
gem 'devise'
gem 'twitter-bootstrap-rails'
gem 'devise-bootstrap-views'
gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+
# gem "paperclip", "~> 4.3"
gem 'refile', '~> 0.6.2', require: "refile/rails"
gem 'refile-mini_magick', '~> 0.2.0'
gem 'refile-s3', '~> 0.2.0'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
