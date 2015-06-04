require 'test_helper'

class CreateAPetTest < ActionDispatch::IntegrationTest
  test "a pet can be created" do
    store = Store.create(name: "Richard's Pet Store", city: "Denver", state: "CO")

    visit store_path(store)
    click_link "Add new pet"
    
    fill_in "Name", with: "Bernie"
    fill_in "Breed", with: "Golden Doodle"
    fill_in "Gender", with: "Male"
    click_button "Create Pet"

    assert_equal store_path(store), current_path

    within("#pets") do
      assert page.has_content?("Bernie")
    end
  end
end
