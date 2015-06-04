require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  test "store has many pets" do
    store = Store.new(name: "Richard's Pet Store", city: "Denver", state: "CO")

    assert_equal [], store.pets
  end
end
