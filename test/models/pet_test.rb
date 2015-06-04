require 'test_helper'

class PetTest < ActiveSupport::TestCase
  test "pet belongs to a store" do
    pet = Pet.new(name: "Bernie", breed: "Golden Doodle", gender: "M")

    assert pet.respond_to?(:store)
  end
end
