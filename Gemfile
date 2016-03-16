source 'https://rubygems.org'
gemspec

gem 'rake', '~> 10'
gem 'mongoid', '~> 5.0'

group :test do
  gem 'rspec'

  if ENV['CI']
    gem 'coveralls', require: false
  else
    gem 'guard'
    gem 'guard-rspec'
    gem 'rb-fsevent'
  end
end
