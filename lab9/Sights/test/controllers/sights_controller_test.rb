require 'test_helper'

class SightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sight = sights(:one)
  end

  test "should get index" do
    get sights_url
    assert_response :success
  end

  test "should get new" do
    get new_sight_url
    assert_response :success
  end

  test "should create sight" do
    assert_difference('Sight.count') do
      post sights_url, params: { sight: { city_id: @sight.city_id, name: @sight.name } }
    end

    assert_redirected_to sight_url(Sight.last)
  end

  test "should show sight" do
    get sight_url(@sight)
    assert_response :success
  end

  test "should get edit" do
    get edit_sight_url(@sight)
    assert_response :success
  end

  test "should update sight" do
    patch sight_url(@sight), params: { sight: { city_id: @sight.city_id, name: @sight.name } }
    assert_redirected_to sight_url(@sight)
  end

  test "should destroy sight" do
    assert_difference('Sight.count', -1) do
      delete sight_url(@sight)
    end

    assert_redirected_to sights_url
  end
end
