class ItemWithUuid
  include Mongoid::Document
  include Mongoid::Uuid

  field :name
end
