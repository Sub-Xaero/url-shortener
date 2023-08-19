source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.6"

gem "bootsnap", require: false # Reduces boot times through caching; required in config/boot.rb
# gem "bcrypt", "~> 3.1.7" # Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "image_processing", "~> 1.2" # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "jsbundling-rails" # Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
# gem "kredis" # Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
gem "propshaft" # The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "puma", "~> 5.6" # Use the Puma web server [https://github.com/puma/puma]
gem "rails", "~> 7.0.3", ">= 7.0.3.1" # Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "redis", "~> 4.0" # Use Redis adapter to run Action Cable in production
gem "sqlite3", "~> 1.4" # Use sqlite3 as the database for Active Record
gem "stimulus-rails" # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "turbo-rails" # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ] # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
end

group :development do
  gem "web-console" # Use console on exceptions pages [https://github.com/rails/web-console]
end

group :test do
  gem "capybara" # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "shoulda"
  gem "selenium-webdriver"
  gem "webdrivers"
end
