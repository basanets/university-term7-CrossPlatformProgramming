require "application_system_test_case"

class SightsTest < ApplicationSystemTestCase
  setup do
    @sight = sights(:one)
  end

  test "visiting the index" do
    visit sights_url
    assert_selector "h1", text: "Sights"
  end

  test "creating a Sight" do
    visit sights_url
    click_on "New Sight"

    fill_in "City", with: @sight.city_id
    fill_in "Name", with: @sight.name
    click_on "Create Sight"

    assert_text "Sight was successfully created"
    click_on "Back"
  end

  test "updating a Sight" do
    visit sights_url
    click_on "Edit", match: :first

    fill_in "City", with: @sight.city_id
    fill_in "Name", with: @sight.name
    click_on "Update Sight"

    assert_text "Sight was successfully updated"
    click_on "Back"
  end

  test "destroying a Sight" do
    visit sights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sight was successfully destroyed"
  end
end
