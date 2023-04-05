source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.1.7', '>= 6.1.7.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3', '>= 4.3.12'
gem 'sass-rails', '>= 6.0.0'
gem 'webpacker', '~> 4.2', '>= 4.2.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.10', '>= 2.10.0'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'omniauth-facebook'

# Image upload to S3
gem 'carrierwave', '1.3.2'
gem 'fog', '~> 1.37.0'
gem 'mini_magick'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.0.1'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # local ENV vars
  gem 'figaro'
end

group :test do
  gem 'capybara', '>= 3.32.1'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
