# encoding: utf-8
require 'uuid'
require 'mongoid'
require 'mongoid/uuid/version'
require 'mongoid/uuid/uuid'
require 'mongoid/uuid/validator'

module Mongoid
  module Uuid
    extend ActiveSupport::Concern
    include Uuid

    def self.validate(uuid)
      UUID.validate(uuid)
    end
  end
end

ActiveModel::Validations.send(:include, Mongoid::Uuid::Validator)
