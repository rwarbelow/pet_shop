require 'test_helper'

class PetTest < ActiveSupport::TestCase
  test "pet belongs to a store" do
    pet = Pet.new(name: "Bernie", breed: "Golden Doodle",  sex: "M")

    assert pet.valid?, "Must assign a Store."
    assert pet.respond_to?(:store)
  end
end
