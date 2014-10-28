require 'rubygems'
require 'bundler/setup'

require 'mongoid'
require 'mongoid/uuid'
require 'mongoid-rspec'

require 'rspec'

if ENV["CI"]
  require "simplecov"
  require "coveralls"
  SimpleCov.formatter = Coveralls::SimpleCov::Formatter
  SimpleCov.start do
    add_filter "spec"
  end
end

Mongoid.configure do |config|
  config.connect_to('mongoid_uuid_test')
end

require 'model'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  config.include RSpec::Matchers
  config.include Mongoid::Matchers
  config.mock_with :rspec
  config.after :all do
    Mongoid::Config.purge!
  end
end
