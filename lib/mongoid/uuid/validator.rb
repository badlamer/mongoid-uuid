module Mongoid
  module Uuid
    module Validator
      class UuidValidator < ActiveModel::EachValidator
        # Ensures that every value is of a valid compact UUID format.
        def validate_each(record, attribute, value)
          unless Mongoid::Uuid.validate(value)
            record.errors.add(attribute, :invalid_uuid)
          end
        end
      end
    end
  end
end
