require "application_system_test_case"

class KittiesTest < ApplicationSystemTestCase
  setup do
    @kitty = kitties(:one)
  end

  test "visiting the index" do
    visit kitties_url
    assert_selector "h1", text: "Kitties"
  end

  test "creating a Kitty" do
    visit kitties_url
    click_on "New Kitty"

    fill_in "Name", with: @kitty.name
    click_on "Create Kitty"

    assert_text "Kitty was successfully created"
    click_on "Back"
  end

  test "updating a Kitty" do
    visit kitties_url
    click_on "Edit", match: :first

    fill_in "Name", with: @kitty.name
    click_on "Update Kitty"

    assert_text "Kitty was successfully updated"
    click_on "Back"
  end

  test "destroying a Kitty" do
    visit kitties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kitty was successfully destroyed"
  end
end
