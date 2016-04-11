require 'test_helper'

class PetTest < ActiveSupport::TestCase
  test "pet has total adoption fee" do
    store = Store.new(
      name: "Richard's Pet Store", 
      city: "Denver", state: "CO",
      base_adoption_fee: 20
    )

    pet = store.pets.new(
      name: "Bernie", 
      breed: "Golden Doodle", 
      adoption_fee: 30
    )

    assert_equal 50, pet.total_adoption_fee
  end
end
