require "application_system_test_case"

class CommunalServiceRecordsTest < ApplicationSystemTestCase
  setup do
    @communal_service_record = communal_service_records(:one)
  end

  test "visiting the index" do
    visit communal_service_records_url
    assert_selector "h1", text: "Communal Service Records"
  end

  test "creating a Communal service record" do
    visit communal_service_records_url
    click_on "New Communal Service Record"

    fill_in "Apartment", with: @communal_service_record.apartment
    fill_in "City", with: @communal_service_record.city
    fill_in "House", with: @communal_service_record.house
    fill_in "Owner last name", with: @communal_service_record.owner_last_name
    fill_in "Owner name", with: @communal_service_record.owner_name
    fill_in "Service type", with: @communal_service_record.service_type
    fill_in "Street", with: @communal_service_record.street
    click_on "Create Communal service record"

    assert_text "Communal service record was successfully created"
    click_on "Back"
  end

  test "updating a Communal service record" do
    visit communal_service_records_url
    click_on "Edit", match: :first

    fill_in "Apartment", with: @communal_service_record.apartment
    fill_in "City", with: @communal_service_record.city
    fill_in "House", with: @communal_service_record.house
    fill_in "Owner last name", with: @communal_service_record.owner_last_name
    fill_in "Owner name", with: @communal_service_record.owner_name
    fill_in "Service type", with: @communal_service_record.service_type
    fill_in "Street", with: @communal_service_record.street
    click_on "Update Communal service record"

    assert_text "Communal service record was successfully updated"
    click_on "Back"
  end

  test "destroying a Communal service record" do
    visit communal_service_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Communal service record was successfully destroyed"
  end
end
