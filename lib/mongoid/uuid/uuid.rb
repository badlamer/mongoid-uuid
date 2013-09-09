# encoding: utf-8
require "uuid"

module Mongoid # :nodoc:
  module Uuid #:nodoc:
    module Uiid
      extend ActiveSupport::Concern

      included do
        field :uuid
        index({:uuid => 1}, {:unique => true})
        before_create :generate_uuid
        validates :uuid, :uniqueness => true
        attr_readonly :uuid
      end

      private

      # Sets unique UUID unless uuid is present.
      def generate_uuid
        if [nil, ""].include?(uuid)
          self.uuid = Uuid.generate
        end
      end
    end
  end
end
