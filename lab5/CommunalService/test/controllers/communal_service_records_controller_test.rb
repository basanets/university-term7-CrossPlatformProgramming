require 'test_helper'

class CommunalServiceRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @communal_service_record = communal_service_records(:one)
  end

  test "should get index" do
    get communal_service_records_url
    assert_response :success
  end

  test "should get new" do
    get new_communal_service_record_url
    assert_response :success
  end

  test "should create communal_service_record" do
    assert_difference('CommunalServiceRecord.count') do
      post communal_service_records_url, params: { communal_service_record: { apartment: @communal_service_record.apartment, city: @communal_service_record.city, house: @communal_service_record.house, owner_last_name: @communal_service_record.owner_last_name, owner_name: @communal_service_record.owner_name, service_type: @communal_service_record.service_type, street: @communal_service_record.street } }
    end

    assert_redirected_to communal_service_record_url(CommunalServiceRecord.last)
  end

  test "should show communal_service_record" do
    get communal_service_record_url(@communal_service_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_communal_service_record_url(@communal_service_record)
    assert_response :success
  end

  test "should update communal_service_record" do
    patch communal_service_record_url(@communal_service_record), params: { communal_service_record: { apartment: @communal_service_record.apartment, city: @communal_service_record.city, house: @communal_service_record.house, owner_last_name: @communal_service_record.owner_last_name, owner_name: @communal_service_record.owner_name, service_type: @communal_service_record.service_type, street: @communal_service_record.street } }
    assert_redirected_to communal_service_record_url(@communal_service_record)
  end

  test "should destroy communal_service_record" do
    assert_difference('CommunalServiceRecord.count', -1) do
      delete communal_service_record_url(@communal_service_record)
    end

    assert_redirected_to communal_service_records_url
  end
end
