require 'rubygems'
require 'bundler/setup'

require 'mongoid'
require 'mongoid/uuid'

require 'rspec'

Mongoid.configure do |config|
  config.connect_to('mongoid_uuid_test')
end
