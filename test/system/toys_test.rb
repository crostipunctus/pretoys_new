require "application_system_test_case"

class ToysTest < ApplicationSystemTestCase
  setup do
    @toy = toys(:one)
  end

  test "visiting the index" do
    visit toys_url
    assert_selector "h1", text: "Toys"
  end

  test "should create toy" do
    visit toys_url
    click_on "New toy"

    fill_in "Age", with: @toy.age
    fill_in "Condition", with: @toy.condition
    fill_in "Description", with: @toy.description
    fill_in "Price", with: @toy.price
    fill_in "Title", with: @toy.title
    click_on "Create Toy"

    assert_text "Toy was successfully created"
    click_on "Back"
  end

  test "should update Toy" do
    visit toy_url(@toy)
    click_on "Edit this toy", match: :first

    fill_in "Age", with: @toy.age
    fill_in "Condition", with: @toy.condition
    fill_in "Description", with: @toy.description
    fill_in "Price", with: @toy.price
    fill_in "Title", with: @toy.title
    click_on "Update Toy"

    assert_text "Toy was successfully updated"
    click_on "Back"
  end

  test "should destroy Toy" do
    visit toy_url(@toy)
    click_on "Destroy this toy", match: :first

    assert_text "Toy was successfully destroyed"
  end
end
