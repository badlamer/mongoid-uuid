# encoding: utf-8
module Mongoid # :nodoc:
  module Uuid #:nodoc:
    module Uuid
      extend ActiveSupport::Concern

      included do
        field :uuid
        index({:uuid => 1}, {:unique => true})
        before_validation :generate_uuid
        validates :uuid, :uniqueness => true, :uuid => false
        attr_readonly :uuid
      end

      private

      # Sets unique UUID unless uuid is present.
      def generate_uuid
        if [nil, ""].include?(uuid)
          self.uuid = UUID.generate
        end
      end
    end
  end
end
