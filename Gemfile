source "https://rubygems.org"

ruby "2.7.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", ">= 6.0.3.3"
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma", ">= 4.3.5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# A lightning fast JSON:API serializer for Ruby Objects
gem "fast_jsonapi", "~> 1.5"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

# Use Active Model has_secure_password
gem "bcrypt", "~> 3.1.7"
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"
# A Ruby implementation of the JWT standard: https://github.com/jwt/ruby-jwt
gem "jwt", "~> 2.2"

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  # Generate seed data
  gem "faker", "~> 2.11"
  # Autoload dotenv in Rails
  gem "dotenv-rails", "~> 2.7"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Dependabot updates
gem "actionview", ">= 6.0.3.3"
gem "nokogiri", ">= 1.11.0"
