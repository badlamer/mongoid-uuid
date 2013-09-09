source 'https://rubygems.org'

gemspec

gem 'ruby_gntp', '>= 0.3.4'
gem "rake"

group :test do
  gem "rspec", "~> 2.14"

  if ENV["CI"]
    gem "coveralls", require: false
  else
    gem "guard"
    gem "guard-rspec"
    gem "rb-fsevent"
  end
end
