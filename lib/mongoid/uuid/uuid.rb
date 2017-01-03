# encoding: utf-8
module Mongoid # :nodoc:
  module Uuid #:nodoc:
    module Uuid
      extend ActiveSupport::Concern

      included do
        field :uuid, type: String
        index({ uuid: 1 }, unique: true)
        before_validation :generate_uuid
        validates :uuid, uniqueness: true, uuid: true
        attr_readonly :uuid
      end

      module ClassMethods
        def uuid_options(*fields)
          options = fields.extract_options!

          if options[:background_index]
            index_spec = index_specification(uuid: 1)
            index_spec.options[:background] = true
          end
        end
      end

      private

      # Sets unique UUID unless uuid is present.
      def generate_uuid
        self.uuid = UUID.generate if uuid.blank?
      end
    end
  end
end
