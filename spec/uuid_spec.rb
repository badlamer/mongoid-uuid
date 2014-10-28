require "spec_helper"

require "uuid"

describe Mongoid::Uuid do
  describe "Create with uuid" do
    it "create with default uuid" do
      item = ItemWithUuid.create!(name: 'foo')
      expect(item.uuid.length).to eq(36)
    end

    it "create with generated uuid" do
      uuid = UUID.generate
      item = ItemWithUuid.create!(name: 'foo', uuid: uuid)
      expect(item.uuid).to eq(uuid)
    end

    it "create with invalid uuid exception" do
      invalid_uuid = 'baz-baz1'
      expect {
        ItemWithUuid.create!(name: 'foo', uuid: invalid_uuid)
      }.to raise_error(Mongoid::Errors::Validations)
    end

    it "create with invalid uuid" do
        invalid_uuid = 'baz-baz2'
        expect(ItemWithUuid.create(name: 'foo', uuid: invalid_uuid).valid?).to eq(false)
    end

  end

  describe "Test read only uuid" do
    it "attempt to remove the uuid" do
      expect {
        ItemWithUuid.create!(name: 'foo').remove_attribute(:uuid)
      }.to raise_error(Mongoid::Errors::ReadonlyAttribute)
    end

    it "attempt to update the uuid" do
      expect {
        ItemWithUuid.create!(name: 'foo').update_attribute(:uuid, 'baz')
      }.to raise_error(Mongoid::Errors::ReadonlyAttribute)
    end
  end

end
